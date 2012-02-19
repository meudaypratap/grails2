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
    </ul>
</div>

<div id="list-book" class="content scaffold-list" role="main">
    <table>

        <tbody>
        <tr>
            <td><g:link controller="util" action="where">Example -1 (Where)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="range">Example -2 (Range)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="queryComposition">Example -3 (Query Composition)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="association">Example -4 (Association)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="size">Example -5 (Size)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="month">Example -6 (Month)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="projection">Example -7 (Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="projections">Example -8 (Projections)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="updateAll">Example -9 (Update All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="deleteAll">Example -10 (Delete All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachedCriteria">Example -11 (Detached Criteria)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachedProjections">Example -12 (Detached Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="subQuery">Example -13 (Sub Query)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="getAll">Example -14 (Get All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachUpdate">Example -15 (Detach Update)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachDelete">Example -16 (Detach Delete)</g:link></td>
        </tr>

        </tbody>
    </table>
</div>
</body>
</html>
