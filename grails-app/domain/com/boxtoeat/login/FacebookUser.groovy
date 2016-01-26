package com.boxtoeat.login

class FacebookUser {

    Long uid
    String accessToken
    Date accessTokenExpires
    static belongsTo = [user: BteUser] //connected to main Spring Security domain

    static constraints = {
        uid unique: true
    }
}
