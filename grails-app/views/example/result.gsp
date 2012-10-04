<%@ page import="grails2.Book" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
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
