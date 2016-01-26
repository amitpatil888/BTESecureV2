package com.boxtoeat.login

import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured('permitAll')
@Transactional(readOnly = true)
class RegistrationDetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegistrationDetails.list(params), model:[registrationDetailsInstanceCount: RegistrationDetails.count()]
    }

    def show(RegistrationDetails registrationDetailsInstance) {
        respond registrationDetailsInstance
    }

    def create() {
        System.out.println("creating object");
        respond new RegistrationDetails(params)
        System.out.println("respond over with");
    }

    @Transactional
    def save(RegistrationDetails registrationDetailsInstance) {

        System.out.println("save invoked");
        if (registrationDetailsInstance == null) {
            notFound()
            return
        }

        if (registrationDetailsInstance.hasErrors()) {
            respond registrationDetailsInstance.errors, view:'create'
            return
        }

        registrationDetailsInstance.save flush:true
        BteUser newUser=new BteUser(registrationDetailsInstance.userName,registrationDetailsInstance.password).save()
        BteRole role = BteRole.find { authority == "ROLE_USER" }
        BteUserBteRole.create newUser, role, true
        System.out.println("forwarding to landing page")
        redirect( controller: "LandingPageController",action:"checkStatus")
        return
        System.out.println("completed forwarding to landing page")
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registrationDetails.label', default: 'RegistrationDetails'), registrationDetailsInstance.id])
                redirect registrationDetailsInstance
            }
            '*' { respond registrationDetailsInstance, [status: CREATED] }
        }
    }

    def edit(RegistrationDetails registrationDetailsInstance) {
        respond registrationDetailsInstance
    }

    @Transactional
    def update(RegistrationDetails registrationDetailsInstance) {
        if (registrationDetailsInstance == null) {
            notFound()
            return
        }

        if (registrationDetailsInstance.hasErrors()) {
            respond registrationDetailsInstance.errors, view:'edit'
            return
        }

        registrationDetailsInstance.save flush:true

        new BteUser(registrationDetailsInstance.userName,registrationDetailsInstance.password).save()

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegistrationDetails.label', default: 'RegistrationDetails'), registrationDetailsInstance.id])
                redirect registrationDetailsInstance
            }
            '*'{ respond registrationDetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegistrationDetails registrationDetailsInstance) {

        if (registrationDetailsInstance == null) {
            notFound()
            return
        }

        registrationDetailsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegistrationDetails.label', default: 'RegistrationDetails'), registrationDetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrationDetails.label', default: 'RegistrationDetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
