<%@ page import="grails2.Author" %>
<!doctype html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="home" action="index" controller="util">Util</g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-author" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'author.name.label', default: 'Name')}"/>

            <g:sortableColumn property="dob" title="${message(code: 'author.dob.label', default: 'Dob')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${authorList}" status="i" var="author">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${author.id}">${fieldValue(bean: author, field: "name")}</g:link></td>

                <td><g:formatDate date="${author.dob}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <g:if test="${authorTotal>10}">
        <div class="pagination">
            <g:paginate total="${authorTotal}"/>
        </div>
    </g:if>
</div>
</body>
</html>
