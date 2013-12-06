grails.release.scm.enabled=false
grails.project.work.dir = 'target'
grails.plugin.repos.distribution.suGrailsPlugins = "svn+ssh://svn.it.su.se/svn/grails-plugins/"
grails.plugin.repos.discovery.suGrailsPlugins = "http://svn.it.su.se/grails-plugins/"
grails.project.repos.default = 'suGrailsPlugins'
grails.project.dependency.resolution = {
    inherits("global") {
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()
    }
    dependencies {
    }
    plugins {
      build(":tomcat:$grailsVersion",
            ":release:2.2.0") {
        export = false
      }
    }
}
