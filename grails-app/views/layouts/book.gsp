<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <g:set var="appName" value="${grails.util.GrailsNameUtils.getNaturalName(g.meta(name: 'app.name'))}" scope="page"/>
    <title>${appName} | <g:layoutTitle/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${resource(dir:'css',file:'custom.css')}"/>
    <link rel="stylesheet" href="${resource(dir:'css',file:'bootstrap.css')}"/>
    <link rel="stylesheet" href="${resource(dir:'css',file:'bootstrap-responsive.css')}"/>
    <script type="text/javascript" src="${resource(dir:'js',file:'jquery-1.8.0.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'js',file:'bootstrap.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'js',file:'application.js')}"></script>
    <g:layoutHead/>
</head>

<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="${createLink(uri:'/')}">${appName}</a>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header">Controllers</li>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
                        <li><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                    </g:each>
                </ul>
            </div>
        </div>
        <div class="span10">
            <g:if test="${flash.error}">
                <div class="alert alert-error">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    ${flash.error}
                </div>
            </g:if>
            <g:if test="${flash.success}">
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    ${flash.success}
                </div>
            </g:if>
            <g:layoutBody/>
        </div>
    </div>
    <hr>
    <footer>
        <p>&copy; Intelligrape Software Ltd.</p>
    </footer>
</div>

</body>
</html>
