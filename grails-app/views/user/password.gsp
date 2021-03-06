<g:applyLayout name="general/empty">
    <content tag="title">Detalle de usuario</content>
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link controller="home">user</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:link controller="home">cambia password</g:link>
        </li>
    </content>
    <content tag="content">
        <g:form controller="user" action="changePasswordUpdate">
            <div class="row">
                <div class="col-md-3">
                    <g:render template="templates/aside" />
                </div>
                <div class="col-md-9">
                    <g:render template="templates/change_password" />
                </div>
            </div>
        </g:form>
    </content>
</g:applyLayout>
