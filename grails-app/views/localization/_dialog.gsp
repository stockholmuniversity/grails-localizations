                <div class="dialog">
                    <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><g:message code="localization.code" default="Code" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:localization,field:'code','errors')}">
                                    <g:if test="${create && fieldValue(bean:localization,field:'code')}">
                                      <input type="hidden" name="code" value="${fieldValue(bean:localization,field:'code')}" />
                                      <%= fieldValue(bean:localization,field:'code') %>
                                    </g:if>
                                    <g:else>
                                      <input type="text" maxlength="250" id="code" name="code" value="${fieldValue(bean:localization,field:'code')}"/>&nbsp;<g:localizationHelpBalloon code="localization.code" />
                                    </g:else>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="locale"><g:message code="localization.locale" default="Locale" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:localization,field:'locale','errors')}">
                                    <g:if test="${create && fieldValue(bean:localization,field:'locale')}">
                                      <input type="hidden" name="locale" value="${fieldValue(bean:localization,field:'locale')}" />
                                      <%= fieldValue(bean:localization,field:'locale') %>
                                    </g:if>
                                    <g:else>
                                      <input type="text" id="locale" name="locale" value="${fieldValue(bean:localization,field:'locale')}"/>&nbsp;<g:localizationHelpBalloon code="localization.locale" />
                                    </g:else>
                                </td>
                            </tr>

                            <g:each in="${localization.otherTexts()}" var="texts" >
                              <tr class="prop">
                                <td valign="top" class="name">
                                  <label><%= texts[0] %>:</label>
                                </td>
                                <td valign="top" class="value">
                                  <%= texts[1] %>
                                </td>
                              </tr>
                            </g:each>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="text">${fieldValue(bean:localization, field:'locale') ?: message(code: "localization.text", default: "Text")}:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:localization,field:'text','errors')}">
                                    <textarea rows="5" cols="40" name="text">${fieldValue(bean:localization, field:'text')}</textarea>&nbsp;<g:localizationHelpBalloon code="localization.text" />
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
