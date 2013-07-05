package org.grails.plugins.localization

import org.grails.plugins.localization.*

class LocalizationService implements Serializable {

    boolean transactional = false

    def hasPlugin(name) {
        return org.codehaus.groovy.grails.plugins.PluginManagerHolder.getPluginManager()?.hasGrailsPlugin(name)
    }
}
