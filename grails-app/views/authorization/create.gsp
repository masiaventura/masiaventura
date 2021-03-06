<g:applyLayout name="person/creation">
    <content tag="title">Nueva autorizacion</content>
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link controller="home">home</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="person">personas</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="person" action="show" id="${authorization.person.id}">detalle</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="person" action="authorizations" id="${authorization.person.id}">documentación</g:link>
        </li>
        <li class="breadcrumb-item active">nueva</li>
    </content>
    <content tag="photoStatus">
        <g:render template="/person/photo/show" />
    </content>
    <content tag="form">
        <g:uploadForm resource="/authorization" method="POST">
            <div class="card card-default card-tabs">
                <div class="card-header p-0 pt-1">
                    <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
                        <li class="nav-item">
                            <span class="nav-link">Detalle de documento</span>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <div class="tab-content" id="custom-tabs-one-tabContent">
                        <g:render template="templates/form" />
                    </div>
                </div>
                <div class="card-footer">
                    <g:submitButton
                        name="create"
                        class="btn btn-primary save"
                        value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    <g:link
                        controller="authorization"
                        action="index"
                        id="${authorization.person.id}"
                        type="submit"
                        class="btn btn-default float-right">Ir al listado</g:link  >
                </div>
            </div>
        </g:uploadForm>
    </content>
</g:applyLayout>
