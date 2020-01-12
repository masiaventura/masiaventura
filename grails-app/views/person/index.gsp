<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
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
        <div id="list-person" class="card" role="main">
            <div class="card-header">
                <h3 class="card-title">
                    <g:message code="default.list.label" args="[entityName]" />
                </h3>
                <div class="card-tools">
                    <ul class="nav nav-grails">
                        <li class="nav-item">
                            <g:link class="create" action="create">
                                <i class="nav-icon fas fa-plus"></i>
                                <g:message code="default.new.label" args="[entityName]" />
                            </g:link>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="card-body p-0">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table
                        collection="${personList}"
                        displayStyle="table_wnr"
                        template="table_people"
                        properties="photo, name" />

                <div class="pagination">
                    <g:paginate total="${personCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>
