<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="localization.show" default="Show Localization" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/', absolute: true)}"><g:message code="home" default="Home" /></a></span>
            <g:localizationMenuButton/>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="localization.list" default="Localization List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="localization.new" default="New Localization" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="localization.show" default="Show Localization" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <h2><g:message code="localization.code" default="Code" />: <%= code %></h2>
                <g:each in="${localizations}" var="localization">
                <table style="padding-bottom: 20px">
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="prop" style="width: 1px">${fieldValue(bean:localization, field:'locale')}</td>

                            <td valign="top" class="value" style="width: 100%">${fieldValue(bean:localization, field:'text')}</td>

                            <td>
                              <div class="buttons" style="margin-bottom: 20px">
                                <g:form>
                                  <input type="hidden" name="id" value="${localization.id}" />
                                  <g:if test="${localization.locale != '*'}">
                                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                                  </g:if>
                                  <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                                </g:form>
                              </div>
                            </td>
                        </tr>

                    </tbody>
                </table>
                </g:each>
            </div>
            <div class="buttons">
              <g:each in="${missingLocales}" var="missingLocale">
                <g:form>
                  <input type="hidden" name="code" value="${code}" />
                  <input type="hidden" name="locale" value="${missingLocale}" />
                  <span class="button"><g:actionSubmit class="create" action="create" value="${message(code:'create', 'default':'Create')} ${missingLocale}" /></span>
                </g:form>
              </g:each>
            </div>
        </div>
    </body>
</html>
