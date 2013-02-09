<%@ page import="com.grails2.Author" %>
<!doctype html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <a class="brand" href="#"><g:message code="default.list.label" args="[entityName]"/></a>
        <ul class="nav pull-right">
            <li><g:link action="create"><i class="icon-plus-sign"></i>&nbsp;<g:message code="default.new.label" args="[entityName]"/></g:link></li>
        </ul>
    </div>
</div>
<table class="table table-bordered table-striped table-hover">
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
<g:if test="${authorTotal > 10}">
    <div class="pagination pagination-right">
        <g:paginate total="${authorTotal}"/>
    </div>
</g:if>
</body>
</html>
