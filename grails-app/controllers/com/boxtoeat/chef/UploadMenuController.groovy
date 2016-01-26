package com.boxtoeat.chef
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class UploadMenuController {


    def index() {
        render(view:"/secure/loggedinPage",model:[tempValue:"tempValue"]);

    }
    def something()
    {

    }
}
