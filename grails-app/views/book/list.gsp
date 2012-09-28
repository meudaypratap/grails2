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

        <g:sortableColumn property="name" title="${message(code: 'book.name.label', default: 'Name')}"/>

        <g:sortableColumn property="price" title="${message(code: 'book.price.label', default: 'Price')}"/>

        <g:sortableColumn property="date" title="${message(code: 'book.price.label', default: 'Date')}"/>

        <th><g:message code="book.author.label" default="Author"/></th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${bookList}" status="i" var="book">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${book.id}">${fieldValue(bean: book, field: "name")}</g:link></td>

            <td>${fieldValue(bean: book, field: "price")}</td>

            <td><g:formatDate date="${book.dateCreated}"/></td>
            <td>${fieldValue(bean: book, field: "author")}</td>

        </tr>
    </g:each>
    </tbody>
</table>
<g:if test="${bookTotal > 10}">
    <div class="pagination">
        <g:paginate total="${bookTotal}"/>
    </div>
</g:if>
</body>
</html>
