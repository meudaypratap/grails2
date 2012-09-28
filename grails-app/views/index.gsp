<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Index</title>
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }

    .sidebar-nav {
        padding: 9px 0;
    }
    </style>
</head>

<body>
<g:set var="appName" value="${grails.util.GrailsNameUtils.getNaturalName(g.meta(name: 'app.name'))}" scope="page"/>
<div class="hero-unit">
    <div class="row-fluid">
        <span class="span12">
            <h2>Welcome to ${appName}</h2>

            <p>Congratulations, you have successfully started ${appName} application.</p>

            <p><a class="btn btn-primary btn-large" href="http://grails.org/doc/latest/" target="_blank">Learn Grails »</a></p>

            <div class="row-fluid">
                <div class="span6">
                    <h4>Installed Plugins</h4>

                    <ul>
                        <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                            <li>${plugin.name} - ${plugin.version}</li>
                        </g:each>
                    </ul>
                </div>

                <div class="span6">

                    <h4>Application Status</h4>

                    <ul>
                        <li>App version: <g:meta name="app.version"/></li>
                        <li>Grails version: <g:meta name="app.grails.version"/></li>
                        <li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
                        <li>JVM version: ${System.getProperty('java.version')}</li>
                        <li>ReloadiCompany 2012ng active: ${grails.util.Environment.reloadingAgentEnabled}</li>
                        <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
                        <li>Domains: ${grailsApplication.domainClasses.size()}</li>
                        <li>Services: ${grailsApplication.serviceClasses.size()}</li>
                        <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
                    </ul>
                </div>
            </div>
        </span>
    </div>
</div>
</body>
</html>