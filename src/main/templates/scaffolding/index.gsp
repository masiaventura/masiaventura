<g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
<content tag="title"><g:message code="default.list.label" args="[entityName]" />s</content>
<content tag="breadcrumb">
    <li class="breadcrumb-item">
        <g:link url="/">Home</g:link>
     </li>
    <li class="breadcrumb-item">
        <g:link controller="person"><g:message code="default.list.label" args="[entityName]" /></g:link>
    </li>
</content>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-${propertyName}" class="card" role="main">
            <div class="card-header">
                <h3 class="card-title">
                    <g:message code="default.list.label" args="[entityName]" />
                </h3>
                <div class="card-tools">
                    <ul class="nav nav-grails">
                        <li class="nav-item">
                            <g:link class="create btn btn-default" action="create">
                                <i class="nav-icon fas fa-plus"></i>
                                <g:message code="default.new.label" args="[entityName]" />
                            </g:link>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="card-body p-0">
                <g:if test="\${flash.message}">
                    <div class="message" role="status">\${flash.message}</div>
                </g:if>
                <g:if test="\${${propertyName}List}">
                <f:table collection="\${${propertyName}List}" />
                    <div class="pagination">
                        <g:paginate total="\${${propertyName}Count ?: 0}" />
                    </div>
                </g:if>
                <g:else>
                    <g:render template="/templates/tables/no_results" />
                </g:else>
            </div>
        </div>
    </body>
</html>
