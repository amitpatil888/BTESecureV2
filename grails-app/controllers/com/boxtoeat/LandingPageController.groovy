package com.boxtoeat

import com.boxtoeat.login.BteUser
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_FACEBOOK'])
class LandingPageController {

    def springSecurityService
    def index() {



    }
    def checkStatus()
    {

        def user = springSecurityService.currentUser
        def bteUser=(BteUser)user

        if(bteUser.avatar== null || bteUser.avatarType==null)
        {
            render(view:"/secure/select_avatar")
            return
        }
        render(view:"/secure/loggedinPage")
    }
}
