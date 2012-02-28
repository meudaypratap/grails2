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
            <td><g:link controller="example" action="where">Example -1 (Where)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="range">Example -2 (Range)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="queryComposition">Example -3 (Query Composition)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="association">Example -4 (Association)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="size">Example -5 (Size)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="month">Example -6 (Month)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="projection">Example -7 (Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="projections">Example -8 (Projections)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="updateAll">Example -9 (Update All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="deleteAll">Example -10 (Delete All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachedCriteria">Example -11 (Detached Criteria)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachedProjections">Example -12 (Detached Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="subQuery">Example -13 (Sub Query)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="getAll">Example -14 (Get All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachUpdate">Example -15 (Detach Update)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="example" action="detachDelete">Example -16 (Detach Delete)</g:link></td>
        </tr>

        </tbody>
    </table>
</div>
</body>
</html>
