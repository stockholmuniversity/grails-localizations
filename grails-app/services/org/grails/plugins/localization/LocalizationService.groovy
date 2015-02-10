package org.grails.plugins.localization

class LocalizationService {

  boolean transactional = false

  public boolean hasPlugin(String name) {
    org.codehaus.groovy.grails.plugins.GrailsPluginManager grailsPluginManager = grails.util.Holders.getPluginManager()
    return (grailsPluginManager?.getGrailsPlugin(name))? true : false
  }
}
