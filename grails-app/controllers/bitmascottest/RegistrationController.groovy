package bitmascottest

import grails.converters.JSON

import java.time.LocalDate
import java.time.Period

class RegistrationController {


    def index() {
        render(view: "registration")
    }


    def isExist(String email) {
        Users user = Users.findByEmail(email)
        if (user != null) {
            def responseData = [
                    'status': "exist"
            ]
            render responseData as JSON

        } else {
            def responseData = [
                    'status': "notexist"
            ]
            render responseData as JSON
        }


    }

    def register() {

        Users reg = new Users(params)
        Users user = Users.findByEmail(reg.email)
        if (user != null) {
            def responseData = [
                    'status': "exist"
            ]
            render responseData as JSON

        } else {
            def uri = new java.net.URI(request.getHeader("referer"))
            def domainName = uri.authority

            if (reg.email.equals("admin@localhost.local")) {
                def responseData = [
                        'status': "reserved"
                ]
                render responseData as JSON
            }

            else if (reg.email != null && !reg.email.isEmpty() && !reg.password.isEmpty() && reg.password != null) {

                def date  = LocalDate.now()
                def birthday = LocalDate.parse(reg.birthdate)
                def period = Period.between(birthday,date)
                reg.age= period.getYears()
                reg.isadmin=false
                reg.save(flush: true)
                def responseData = [
                        'status': "success",
                        'url'   : "http://" + domainName
                ]
                render responseData as JSON
            } else {
                def responseData = [
                        'status': "empty"
                ]
                render responseData as JSON
            }


        }
    }
}
