package com.boxtoeat.login


import grails.test.mixin.*
import spock.lang.*

@TestFor(KitchenPicsController)
@Mock(KitchenPics)
class KitchenPicsControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.kitchenPicsInstanceList
        model.kitchenPicsInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.kitchenPicsInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def kitchenPics = new KitchenPics()
        kitchenPics.validate()
        controller.save(kitchenPics)

        then: "The create view is rendered again with the correct model"
        model.kitchenPicsInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        kitchenPics = new KitchenPics(params)

        controller.save(kitchenPics)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/kitchenPics/show/1'
        controller.flash.message != null
        KitchenPics.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def kitchenPics = new KitchenPics(params)
        controller.show(kitchenPics)

        then: "A model is populated containing the domain instance"
        model.kitchenPicsInstance == kitchenPics
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def kitchenPics = new KitchenPics(params)
        controller.edit(kitchenPics)

        then: "A model is populated containing the domain instance"
        model.kitchenPicsInstance == kitchenPics
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/kitchenPics/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def kitchenPics = new KitchenPics()
        kitchenPics.validate()
        controller.update(kitchenPics)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.kitchenPicsInstance == kitchenPics

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        kitchenPics = new KitchenPics(params).save(flush: true)
        controller.update(kitchenPics)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/kitchenPics/show/$kitchenPics.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/kitchenPics/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def kitchenPics = new KitchenPics(params).save(flush: true)

        then: "It exists"
        KitchenPics.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(kitchenPics)

        then: "The instance is deleted"
        KitchenPics.count() == 0
        response.redirectedUrl == '/kitchenPics/index'
        flash.message != null
    }
}
