import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler

// Place your Spring DSL code here
beans = {

    redirectFailureHandlerExample(SimpleUrlAuthenticationFailureHandler) {
        defaultFailureUrl = '/failedFacebook' //redirect to this URL when authentication fails
    }
}