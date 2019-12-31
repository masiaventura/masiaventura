<table class="table table-striped table-ma">
    <thead>
         <tr>         
            <th class="text-center">Foto</th>
            <th class="text-center">Nombre</th>
            <g:sortableColumn class="text-center" property="birthDate" title="Edad" />            
            <g:sortableColumn class="text-center" property="registrationAt" title="Registration Date" />  
            <th class="text-center">Projects</th>               
            <th class="text-center">Activo</th>                      
            <g:sortableColumn class="text-center" property="professionalReference" title="Responsable" />            
            <th class="text-center"></th>
        </tr>        
    </thead>
    <tbody>
        <g:each in="${collection}" var="bean" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">                
                <td class="contained text-center">
                    <f:display 
                        bean="${bean}" 
                        property="photo" 
                        displayStyle="${displayStyle?:'table'}" 
                        theme="${theme}"/>
                </td>
                <td class="text-left">
                    <f:display 
                        bean="${bean}" 
                        property="fullname" 
                        displayStyle="${displayStyle?:'table'}" 
                        theme="${theme}"/>
                </td>
               
                <td class="text-center">
                    <f:display 
                        bean="${bean}" 
                        property="age" 
                        displayStyle="${displayStyle?:'table'}" 
                        theme="${theme}"/>
                </td>                                                
                <td class="text-center">
                    <f:display 
                        bean="${bean}" 
                        property="registrationAt" 
                        displayStyle="${displayStyle?:'table'}" 
                        theme="${theme}"/>
                </td>                                
                <td class="text-center">
                    <f:display 
                        bean="${bean}" 
                        property="projects" 
                        displayStyle="${displayStyle?:'table'}" 
                        theme="${theme}"/>
                </td>                                
                <td class="text-center">
                    <f:display 
                        bean="${bean}" 
                        property="active" 
                        templates="active" />
                </td>                                                                
                <td class="text-center">
                    <f:display 
                        bean="${bean}" 
                        property="professionalReference" 
                        displayStyle="${displayStyle?:'table'}" 
                        theme="${theme}"/>
                </td>                                                                
                <td class="text-right actions">
                    <g:link class="btn btn-default btn-sm" 
                        controller="person" action="show" id="${bean.id}">
                        <i class="fas fa-eye"></i>
                        detalle
                    </g:link>
                    <g:link class="btn btn-primary btn-sm" 
                        controller="person" action="edit" id="${bean.id}">
                        <i class="fas fa-pen"></i>
                        editar
                    </g:link>
                    <sec:ifAllGranted roles='ROLE_ADMIN'>
                        <g:link class="btn btn-danger btn-sm" 
                            controller="person" action="delete" id="${bean.id}">
                            <i class="fas fa-trash"></i>
                            borrar
                        </g:link>
                    </sec:ifAllGranted>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>