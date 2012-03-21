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
        <li><a class="home" href="${createLink(action: 'index')}">Examples</a></li>
        <li><a class="home" href="${createLink(controller: 'book')}">Book</a></li>
        <li><a class="home" href="${createLink(controller: 'author')}">Author</a></li>
    </ul>
</div>

<div id="list-book" class="content scaffold-list" role="main">
    <table>
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
                <tr class="${(index % 2)? 'even' : 'odd'}">
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
