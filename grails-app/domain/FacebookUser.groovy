

import com.boxtoeat.login.BteUser

class FacebookUser {

    Long uid
    String accessToken
    Date accessTokenExpires

    static belongsTo = [user: BteUser]

    static constraints = {
        uid unique: true
    }
}
