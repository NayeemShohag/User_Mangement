package bitmascottest

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/login/Login")
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
