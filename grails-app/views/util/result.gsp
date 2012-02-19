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
        <li><a class="home" href="${createLink(action: 'index')}">Util</a></li>
    </ul>
</div>

<div id="list-book" class="content scaffold-list" role="main">
    <table>
        <thead>
        <th>id</th>
        <th>price</th>
        </thead>
        <tbody>
        <g:if test="${average}">
            <tr>
                <td colspan="2">Average -: ${average}</td>
            </tr>
        </g:if>
        <g:if test="${results}">
            <g:each in="${results}" var="result" status="index">
                <tr>
                    <td>${result[0]}</td>
                    <td>${result[1]}</td>
                </tr>

            </g:each>
        </g:if>

        </tbody>
    </table>
</div>
</body>
</html>
