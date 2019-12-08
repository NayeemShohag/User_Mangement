package bitmascottest

import grails.persistence.*


@Entity
class Users {

    String firstName
    String lastName
    String address
    String phone
    String email
    String birthdate
    String age
    String password
    boolean isadmin

    static constraints = {
        address(nullable: true)

    }
    static mapping = {
        table 'users'
        version false
        firstName column: 'FirstName'
        lastName column: 'LastName'
        address column: 'Address'
        phone column: 'Phone'
        email column: 'Email'
        birthdate column: 'BirthDate'
        age column: 'Age'
        password column: 'Password'
        isadmin column: 'IsAdmin'
    }

    def beforeInsert()
    {

        this.password = this.password.encodeAsMD5()
    }
    def beforeUpdate()
    {
        this.password = this.password.encodeAsMD5()
    }
}

