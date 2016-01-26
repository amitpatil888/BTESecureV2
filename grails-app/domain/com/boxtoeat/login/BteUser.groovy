package com.boxtoeat.login

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class BteUser implements Serializable {

	private static final long serialVersionUID = 1



	transient springSecurityService
	byte[] avatar
	String avatarType
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	static hasMany = [kitchenPics: KitchenPics]
	BteUser(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	Set<BteRole> getAuthorities() {
		BteUserBteRole.findAllByBteUser(this)*.bteRole
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		avatar(nullable:true, maxSize: 16384 /* 16K */)
		avatarType(nullable:true)
	}

	static mapping = {
		password column: '`password`'
	}
}
