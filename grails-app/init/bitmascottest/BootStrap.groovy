package bitmascottest

import java.time.LocalDate


class BootStrap {

    def init = { servletContext ->

        Users user = new Users()

        user.isadmin = true
        user.email = "admin@localhost.local"
        user.password = "admin"
        user.lastName = "admin"
        user.firstName = "admin"
        user.birthdate =  LocalDate.now()
        user.age = "0"
        user.phone= "0"
        if(Users.findByEmail(user.email)==null)
        {

            user.save()
        }

    }
    def destroy = {
    }
}
