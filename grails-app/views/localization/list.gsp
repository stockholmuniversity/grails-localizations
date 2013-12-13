<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="localization.list" default="Localization List" /></title>
        <g:localizationHelpBalloons />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/', absolute: true)}"><g:message code="home" default="Home" /></a></span>
            <g:localizationMenuButton/>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="localization.new" default="New Localization" /></g:link></span>
            <g:if test="${incomplete}">
              <span class="menuButton"><g:link action="correctIncomplete"><g:message code="localization.correctIncomplete" default="Correct {0} incomplete codes" args="[incomplete?.size()]" /></g:link></span>
            </g:if>
        </div>

        <div class="body">
            <h1><g:message code="localization.list" default="Localization List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>

          <div>
            <g:form action="search" method="GET">
              Search: <input name="q" size="48" value="${params.q}"/>
              <g:submitButton name="search" class="btn btn-small" value="Search"/>
              <g:if test="${params.q}">
                <g:link class="btn btn-small" action="list">Reset</g:link>
              </g:if>
            </g:form>
          </div>
            <div class="list">
                <table>
                    <thead>
                        <tr>

                   	        <g:sortableColumn property="code" title="Code" titleKey="localization.code" params="${params}" />

                   	        <th>#</th>

                   	        <g:sortableColumn property="locale" title="Locale" titleKey="localization.locale" params="${params}" />

                   	        <g:sortableColumn property="text" title="Text" titleKey="localization.text" params="${params}" />

                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${localizationList}" status="i" var="localization">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link action="show" params="${[code: localization.code]}">${fieldValue(bean:localization, field:'code')}</g:link></td>

                            <td>${localization.locales()?.size()}</td>

                            <td>${fieldValue(bean:localization, field:'locale')}</td>

                            <td>${fieldValue(bean:localization, field:'text')}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${localizationListCount}"/>
            </div>
        </div>
    </body>
</html>
