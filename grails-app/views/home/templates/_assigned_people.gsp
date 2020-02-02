<!-- USERS LIST -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Ultimas personas Asignadas</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0">
        <g:if test="${latestPeople}">
        <ul class="users-list clearfix">
            <g:each var="person" in="${latestPeople}">
                <li>
                    <g:if test="${person.photo}">
                    <img
                        class="img-circle dashboard elevation-2"
                        src="${storage.resolve(attachment: person.photo)}"
                        alt="User Avatar">
                    </g:if>
                    <g:else>
                    <asset:image src="default_user.jpg" alt="foto de la persona" class="img-circle dashboard elevation-2" />
                    </g:else>
                    <g:link
                        class="users-list-name"
                        controller="person"
                        action="show"
                        id="${person.id}">${person.fullname}</g:link>
                    <span class="users-list-date">
                        ${time.ago(time: person.lastUpdated)}
                    </span>
                </li>
            </g:each>
        </ul>
        </g:if>
        <g:else>
            <g:render template="/templates/tables/no_results" />
        </g:else>
    <!-- /.users-list -->
    </div>
    <!-- /.card-body -->
    <div class="card-footer text-center">
        <g:link controller="person" action="index">Ver todas</g:link>
    </div>
    <!-- /.card-footer -->
</div>
