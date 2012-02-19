<%@ page import="grails2.Book" %>
<!doctype html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="home" action="index" controller="util">Util</g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-book" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'book.name.label', default: 'Name')}"/>

            <g:sortableColumn property="price" title="${message(code: 'book.price.label', default: 'Price')}"/>

            <th><g:message code="book.author.label" default="Author"/></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${books}" status="i" var="book">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${book.id}">${fieldValue(bean: book, field: "name")}</g:link></td>

                <td>${fieldValue(bean: book, field: "price")}</td>

                <td>${fieldValue(bean: book, field: "author")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
