package bitmascottest

import grails.converters.JSON

class LoginController {

    def Login() {


        Users log = new Users(params)
        if (log.email != null && log.password != null) {

            def uri = new URI(request.getHeader("referer"))
            def domainName = uri.authority;


            def logpass = log.password.encodeAsMD5()

            Users user = Users.findByEmailAndPassword(log.email, logpass)

            if (user != null) {
                if (user.isadmin) {
                    session["userid"] = user.id
                    def responseData = [
                            'url'   : "http://" + domainName + "/user/admin",
                            'status': "success",

                    ]
                    render responseData as JSON

                } else {
                    session["userid"] = user.id
                    def responseData = [
                            'url'   : "http://" + domainName + "/user/profile",
                            'status': "success",

                    ]
                    render responseData as JSON
                }


            } else {
                def responseData = [
                        'status': "wrong",
                ]
                render responseData as JSON

            }

        }
        else {
            render(view: "Login")
        }


    }
}
