import org.grails.plugins.localization.*

class SuLocalizationEditorGrailsPlugin {
    def version = "2.0.1"
    def dependsOn = [:]

  def author = "Paul Fernley"
  def authorEmail = "paul@pfernley.orangehome.co.uk"
  def title = "Localizations (messages) plugin"
  def description = ''
  def documentation = ''

  def doWithSpring = {
    messageSource(LocalizationMessageSource)
  }

  def doWithApplicationContext = { applicationContext ->
  }

  def doWithWebDescriptor = { xml ->
  }

  def doWithDynamicMethods = { ctx ->
    application.domainClasses.each { domainClass ->
      domainClass.metaClass.message = { Map parameters -> Localization.getMessage(parameters) }
      domainClass.metaClass.errorMessage = { Map parameters -> Localization.setError(delegate, parameters) }
    }

    application.serviceClasses.each { serviceClass ->
      serviceClass.metaClass.message = { Map parameters -> Localization.getMessage(parameters) }
    }
  }

  def onChange = { event ->
    // TODO Implement code that is executed when any artefact that this plugin is
    // watching is modified and reloaded. The event contains: event.source,
    // event.application, event.manager, event.ctx, and event.plugin.
  }

  def onConfigChange = { event ->
    // TODO Implement code that is executed when the project configuration changes.
    // The event is the same as for 'onChange'.
  }
}
