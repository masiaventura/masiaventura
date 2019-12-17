package ma

import ma.security.Authority
import ma.security.User
import ma.security.UserAuthority
import ma.security.Requestmap
import ma.storage.Attachment

class BootStrap {

    static MAPPINGS = [
        '/error',
        '/**/favicon.ico',
        '/shutdown',
        '/assets/**',
        '/**/js/**',
        '/**/css/**',
        '/**/images/**',
        '/login',
        '/login.*',
        '/login/*',
        '/logout',
        '/logout.*',
        '/logout/*'
    ]

    def springSecurityService

    def init = { servletContext ->
        for (String url in MAPPINGS) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }

        new Requestmap(url: '/',              configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        new Requestmap(url: '/storage/**',    configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        new Requestmap(url: '/h2-console/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/profile/**',    configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        new Requestmap(url: '/admin/**',      configAttribute: 'ROLE_USER,ROLE_ADMIN').save()
        new Requestmap(url: '/admin/role/**', configAttribute: 'ROLE_SUPERVISOR').save()
        new Requestmap(url: '/admin/user/**', configAttribute: 'ROLE_ADMIN,ROLE_SUPERVISOR').save()
        new Requestmap(url: '/login/impersonate', configAttribute: 'ROLE_SWITCH_USER,isFullyAuthenticated()').save()

        createAdminUser()
        createSimpleUser()

        springSecurityService.clearCachedRequestmaps()
    }

    private void createAdminUser() {
        File file = new File('grails-app/assets/images/user2-160x160.jpg')
        Attachment photo = new Attachment(filename: 'photo2.jpg', fileStream: file.newInputStream())
        User admin = new User(username: 'admin', password: 'admin', photo: photo).save(failOnError: true)
        Authority authority = new Authority(authority: 'ROLE_ADMIN').save()

        UserAuthority.create(admin, authority)
    }

    private void createSimpleUser() {
        File file = new File('grails-app/assets/images/user7-128x128.jpg')
        Attachment photo = new Attachment(filename: 'photo3.jpg', fileStream: file.newInputStream())
        User john = new User(username: 'john', password: 'john', photo: photo).save(failOnError: true)
        Authority user = new Authority(authority: 'ROLE_USER').save()

        UserAuthority.create(john, user)
    }

    def destroy = {
    }
}
