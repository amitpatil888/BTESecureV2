package com.boxtoeat.login

import grails.plugin.springsecurity.annotation.Secured

import javax.servlet.http.HttpServletRequest
import org.apache.commons.io.FileUtils

import org.springframework.web.multipart.commons.CommonsMultipartFile

import org.springframework.web.multipart.*
@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_FACEBOOK'])
class AvatarUploadController {

    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
    def springSecurityService


    def upload_avatar() {
        def user = springSecurityService.currentUser // or however you select the current user
        def bteUser=(BteUser)user;
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        // Get the avatar file from the multi-part request
        def f = mpr.getFile('avatar')

        // List of OK mime-types
        if (!okcontents.contains(f.getContentType())) {
            flash.message = "Avatar must be one of: ${okcontents}"
            render(view:'select_avatar', model:[user:user])
            return
        }

        // Save the image and mime type
        bteUser.avatar = f.bytes
        bteUser.avatarType = f.contentType
        log.info("File uploaded: $bteUser.avatarType")

        // Validation works, will check if the image is too big
        if (!bteUser.save()) {
            render(view:"secure/select_avatar")
            return
        }
      //  flash.message = "Avatar (${bteUser.avatarType}, ${bteUser.avatar.size()} bytes) uploaded."

        render(view:"/secure/loggedinPage")
    }


    def avatar_image() {

        def user = springSecurityService.currentUser // or however you select the current user
        def bteUser=(BteUser)user;


        if (!bteUser || !bteUser.avatar || !bteUser.avatarType) {
            response.sendError(404)
            return
        }
        response.contentType = bteUser.avatarType
        response.contentLength = bteUser.avatar.size()
        OutputStream out = response.outputStream
        out.write(bteUser.avatar)
        out.close()
    }




}
