<%@ page import="grails2.Book" %>
<!doctype html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <a class="brand" href="#"><g:message code="default.list.label" args="[entityName]"/></a>
        <ul class="nav pull-right">
            <li><g:link action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
        </ul>
    </div>
</div>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <th>Id</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <g:if test="${result}">
        <tr>
            <td colspan="2">${result}</td>
        </tr>
    </g:if>
    <g:if test="${results}">
        <g:each in="${results}" var="result" status="index">
            <tr class="${(index % 2) ? 'even' : 'odd'}">
                <td>${result[0]}</td>
                <td>${result[1]}</td>
            </tr>

        </g:each>
    </g:if>

    </tbody>
</table>
</body>
</html>
