<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main" />
  <title><g:message code="localization.correctIncomplete" default="Correct {0} incomplete codes" args="[matrix.size()]" /></title>
  <g:localizationHelpBalloons />
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLink(uri: '/', absolute: true)}"><g:message code="home" default="Home" /></a></span>
  <g:localizationMenuButton/>
  <span class="menuButton"><g:link class="create" action="create"><g:message code="localization.new" default="New Localization" /></g:link></span>
</div>

<div class="body">
  <h1><g:message code="localization.correctIncomplete" default="Correct {0} incomplete codes" args="[matrix.size()]" /></h1>
  <g:if test="${flash.message}">
    <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
  </g:if>

  <div class="list">
    <table>
      <thead>
      <tr>

        <th><g:message code="localization.code" default="Code"/></th>

        <th><g:message code="localization.buttons" default="Buttons" /></th>

      </tr>
      </thead>
      <tbody>
      <g:each in="${matrix}" status="i" var="localization">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

          <td><g:link action="show" params="${[code: localization[0]]}">${localization[0]}</g:link></td>

          <td>
            <g:each in="${localization[1]}" var="missingLocale">
              <g:form style="float: left">
                <input type="hidden" name="code" value="${localization[0]}" />
                <input type="hidden" name="locale" value="${missingLocale}" />
                <span class="button"><g:actionSubmit class="create" action="create" value="${message(code:'create', 'default':'Create')} ${missingLocale}" /></span>
              </g:form>
            </g:each>
          </td>

        </tr>
      </g:each>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>
