<div class="card card-info collapsed-card">
    <div class="card-header">
        <h3 class="card-title">Identification</h3>
        <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-plus"></i>
        </button>
        </div>
        <!-- /.card-tools -->
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <f:field label="Fecha de baja" bean="person" property="identification.deletedAt"/>
        <f:field label="Motivo de baja" bean="person" property="identification.deletionMotivation"/>
    </div>
    <!-- /.card-body -->
<!-- /.card -->
</div>