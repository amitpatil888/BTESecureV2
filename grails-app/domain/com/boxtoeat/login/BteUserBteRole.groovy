package com.boxtoeat.login

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class BteUserBteRole implements Serializable {

	private static final long serialVersionUID = 1

	BteUser bteUser
	BteRole bteRole

	BteUserBteRole(BteUser u, BteRole r) {
		this()
		bteUser = u
		bteRole = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof BteUserBteRole)) {
			return false
		}

		other.bteUser?.id == bteUser?.id && other.bteRole?.id == bteRole?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (bteUser) builder.append(bteUser.id)
		if (bteRole) builder.append(bteRole.id)
		builder.toHashCode()
	}

	static BteUserBteRole get(long bteUserId, long bteRoleId) {
		criteriaFor(bteUserId, bteRoleId).get()
	}

	static boolean exists(long bteUserId, long bteRoleId) {
		criteriaFor(bteUserId, bteRoleId).count()
	}

	private static DetachedCriteria criteriaFor(long bteUserId, long bteRoleId) {
		BteUserBteRole.where {
			bteUser == BteUser.load(bteUserId) &&
			bteRole == BteRole.load(bteRoleId)
		}
	}

	static BteUserBteRole create(BteUser bteUser, BteRole bteRole, boolean flush = false) {
		def instance = new BteUserBteRole(bteUser: bteUser, bteRole: bteRole)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(BteUser u, BteRole r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = BteUserBteRole.where { bteUser == u && bteRole == r }.deleteAll()

		if (flush) { BteUserBteRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(BteUser u, boolean flush = false) {
		if (u == null) return

		BteUserBteRole.where { bteUser == u }.deleteAll()

		if (flush) { BteUserBteRole.withSession { it.flush() } }
	}

	static void removeAll(BteRole r, boolean flush = false) {
		if (r == null) return

		BteUserBteRole.where { bteRole == r }.deleteAll()

		if (flush) { BteUserBteRole.withSession { it.flush() } }
	}

	static constraints = {
		bteRole validator: { BteRole r, BteUserBteRole ur ->
			if (ur.bteUser == null || ur.bteUser.id == null) return
			boolean existing = false
			BteUserBteRole.withNewSession {
				existing = BteUserBteRole.exists(ur.bteUser.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['bteUser', 'bteRole']
		version false
	}
}
