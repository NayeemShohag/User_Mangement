package bitmascottest

import grails.converters.JSON

class UserController {

    def profile() {
        Users user = Users.get(session["userid"] as Serializable)
        if (user != null && !user.isadmin) {

            render(view: "profile", model: [user: user])
        } else {
//
            render(view: "/login/Login")
        }

    }

    def admin() {
        Users user = Users.get(session["userid"] as Serializable)
        if (user != null && user.isadmin) {

            def allUsers = Users.findAllByIdNotLike(session["userid"] as Long)
            render(view: "userList", model: [users: allUsers , user: user] )
        } else {
//
            render(view: "/login/login")
        }

    }

    def change_password() {
        Users user = Users.get(session["userid"] as Serializable)
        if (user != null && !user.isadmin) {
            def pass = params.password
            def newpass = params.newpassword
            def repass = params.repassword
            if (pass != null & newpass != null & repass != null) {

                def uri = new URI(request.getHeader("referer"))
                def domainName = uri.authority
                pass = pass.encodeAsMD5()

                if (user.password.equals(pass) && newpass.equals(repass)) {
                    user.password = newpass
                    user.save(flush: true)
                    def responseData = [
                            'url'   : "http://" + domainName + "/user/profile",
                            'status': "success",

                    ]
                    render responseData as JSON
                } else {
                    def responseData = [
                            'status': "wrong",
                    ]
                    render responseData as JSON
                }
            } else {
                render(view: "passwordChange", model: [user: user])
            }

        } else {
//
            render(view: "/login/Login")
        }


    }

    def logout() {
        session["userid"] = null;
        render(view: "/login/Login")

    }


}
