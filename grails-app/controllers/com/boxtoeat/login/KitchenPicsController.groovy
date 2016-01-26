package com.boxtoeat.login


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class KitchenPicsController {

    def display(Long id) {

        def myCoolImageInstance = KitchenPics.get(id)

        response.contentLength = myCoolImageInstance.binaryData.size()
        response.outputStream << myCoolImageInstance.binaryData
        response.outputStream.flush()

    }

    def upload() {
//        def file = request.getFile('file')
//        if(file.empty) {
//            flash.message = "File cannot be empty"
//        } else {
//            def documentInstance = new Document()
//            documentInstance.filename = file.originalFilename
//            documentInstance.filedata = file.getBytes()
//            documentInstance.save()
//        }
//        redirect (action:'list')
    }
}
