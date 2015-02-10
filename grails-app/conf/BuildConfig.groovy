grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.plugin.repos.distribution.suGrailsPlugins = "svn+ssh://svn.it.su.se/svn/grails-plugins/"
grails.plugin.repos.discovery.suGrailsPlugins = "http://svn.it.su.se/grails-plugins/"
grails.project.repos.default = 'suGrailsPlugins'
grails.release.scm.enabled = false
grails.project.target.level = 1.7
grails.project.source.level = 1.7

grails.project.dependency.resolution = {
  inherits("global") {
  }
  log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
  repositories {
    grailsPlugins()
    grailsHome()
    grailsCentral()
    mavenLocal()
    mavenCentral()
  }
  dependencies {
    compile 'org.apache.commons:commons-io:1.3.2'
    compile 'org.apache.maven:maven-model:3.1.1'
    compile 'org.tmatesoft.svnkit:svnkit:1.3.5'
  }
  plugins {
    compile ":svn:1.0.2"
    build(":tomcat:7.0.55")
    build(":release:3.0.1") {
      export = false
    }
  }
}
