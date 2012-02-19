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
            <td><g:link controller="util" action="association">Example -3 (Association)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="month">Example -4 (Month)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="projection">Example -5 (Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="projections">Example -6 (Projections)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="updateAll">Example -7 (Update All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="deleteAll">Example -8 (Delete All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachedCriteria">Example -9 (Detached Criteria)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachedProjections">Example -10 (Detached Projection)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="subQuery">Example -11 (Detached Projections)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="getAll">Example -12 (Get All)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachUpdate">Example -13 (Detach Update)</g:link></td>
        </tr>
        <tr>
            <td><g:link controller="util" action="detachDelete">Example -14 (Detach Delete)</g:link></td>
        </tr>

        </tbody>
    </table>
</div>
</body>
</html>
