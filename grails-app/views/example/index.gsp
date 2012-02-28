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
        <li><a class="list" href="${createLink(controller: 'book')}">Book</a></li>
        <li><a class="list" href="${createLink(controller: 'author')}">Author</a></li>
    </ul>
</div>

<div id="list-book" class="content scaffold-list" role="main">
    <table>

        <tbody>
        <tr>
            <td><g:link controller="example" action="where">Example - 1 (Where)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="whereAny">Example - 2 (WhereAny)</g:link></td>
        </tr>

        <tr>
            <td><g:link controller="example" action="range">Example - 3 (Range)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="queryComposition">Example - 4 (Query Composition)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="association">Example - 5 (Association)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="size">Example - 6 (Size)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="month">Example - 7 (Month)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="projection">Example - 8 (Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="projections">Example - 9 (Projections)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="updateAll">Example - 10 (Update All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="deleteAll">Example - 11 (Delete All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachedCriteria">Example - 12 (Detached Criteria)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachedProjections">Example - 13 (Detached Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="subQuery">Example - 14 (Sub Query)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="getAll">Example - 15 (Get All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachUpdate">Example - 16 (Detach Update)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachDelete">Example - 17 (Detach Delete)</g:link></td>
        </tr>

        </tbody>
    </table>
</div>
</body>
</html>
