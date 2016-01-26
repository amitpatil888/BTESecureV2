package btesecurev2

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class TestController {

    def index() {}
}
