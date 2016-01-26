import com.boxtoeat.login.*;

    class BootStrap {
        def init = { servletContext ->
            def adminRole = new BteRole('ROLE_ADMIN').save()
            def userRole = new BteRole('ROLE_USER').save()
            new BteRole(authority: 'ROLE_FACEBOOK').save(flush: true)
            new BteRole(authority: 'ROLE_GOOGLE').save(flush: true)
            def testUser = new BteUser('me', 'password').save()
            BteUserBteRole.create testUser, adminRole, true
            assert BteUser.count() == 1
            assert BteRole.count() == 4
            assert BteUserBteRole.count() == 1
        }
    }


