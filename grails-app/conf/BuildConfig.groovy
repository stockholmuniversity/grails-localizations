grails.release.scm.enabled=false
grails.project.work.dir = 'target'
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"

grails.project.repos.default = 'su'
grails.project.repos.su.url = "scpexe://git.it.su.se/afs/su.se/services/maven/it.su.se/maven2"
grails.project.repos.su.type = "maven"

grails.project.source.level = 1.7
grails.project.target.level = 1.7

grails.project.dependency.resolver = "maven" // or ivy

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
    compile 'org.apache.maven:maven-model:3.1.1'
  }
  plugins {
    build(":tomcat:7.0.55")
    build(":release:3.0.1") {
      export = false
    }
  }
}
