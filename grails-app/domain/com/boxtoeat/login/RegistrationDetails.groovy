package com.boxtoeat.login

class RegistrationDetails {



    String userName
    String password
    String password2
    String firstName
    String lastName
    String email
    String telephone
    String addressLine1
    String addressLine2
    String city
    String state
    String country
    String zip
    String emailVerificationCode
    String telephoneVerificationCode
    boolean phoneValidated
    boolean emailValidated

    static constraints = {
        userName blank: false, unique: true
        password blank: false
        emailVerificationCode blank:true,nullable: true
        telephoneVerificationCode blank:true,nullable: true
        addressLine2 blank:true
    }
    RegistrationDetails(String userName,String password,String password2,String firstName,
                        String lastName,String email,String telephone,String addressLine1,String addressLine2,String city,String state,
                        String country,String zip)
    {
        this()
        this.userName=userName
        this.password=password
        this.password2=password2
        this.firstName=firstName
        this.lastName=lastName
        this.email=email
        this.telephone=telephone
        this.addressLine1=addressLine1
        this.addressLine2=addressLine2
        this.city=city
        this.country=country
        this.zip=zip
        emailVerificationCode=""
        telephoneVerificationCode=""
        emailValidated=false
        phoneValidated=false

    }
}
