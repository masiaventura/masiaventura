package ma

import grails.plugin.springsecurity.SpringSecurityService
import ma.security.User

/**
 * This tag library resolves security data to show in GSPs such
 * as the logged user image
 *
 * @since 0.1.0
 */
class SecurityTagLib {

    /**
     * Tag namespace
     *
     * @since 0.1.0
     */
    static namespace = 'masec'

    /**
     * Access to security context in application
     *
     * @since 0.1.0
     */
    SpringSecurityService springSecurityService

    /**
     * Shows current user photo
     *
     * @since 0.1.0
     */
    def userPhoto = { attrs, body ->
        if (springSecurityService.currentUser) {
            User user = User.findById(springSecurityService.currentUser.id)

            out << (user?.photo ? "/storage/${user?.photo?.id}" : null)
        }
    }

    /**
     * Shows current user's name
     *
     * @since 0.1.0
     */
    def userName = {
        if (springSecurityService.currentUser) {
            User user = User.findById(springSecurityService.currentUser.id)
            out << user.name
        }
    }
}
