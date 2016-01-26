class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/failedFacebook"(controller: 'landing',  action: "/index")
        "/"(view:"/index")
        "500"(view:'/error')
	}
}