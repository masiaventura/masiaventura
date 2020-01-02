<g:applyLayout name="person/creation">
    <content tag="title">Editar proceso</content>
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link controller="home">home</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="person">personas</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="person" action="show" id="${process.person.id}">detalle</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="person" action="processes" id="${process.person.id}">procesos</g:link>
        </li>
        <li class="breadcrumb-item active">editar</li>
    </content>
    <content tag="photoStatus">
        <g:render template="/person/photo/show" />
    </content>
    <content tag="form">
        <div class="card">
            <g:form name="process-update" action="update" id="${process.id}" method="POST">
                <div class="card-body">
                    <div class="tab-content" id="custom-tabs-one-tabContent">
                        <g:render template="templates/body" />
                    </div>
                </div>
                <div class="card-footer">
                    <g:submitButton name="create" class="btn btn-primary save" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <g:link
                        controller="process"
                        action="index"
                        id="${process.person.id}"
                        type="submit"
                        class="btn btn-default float-right">Volver a listado</g:link  >
                </div>
            </g:form>
        </div>
    </content>
</g:applyLayout>
