<?php
	$Pagina="estadisticas";
	include "header.php";
?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h3>Exportar a Excel</h3>
			<form class="form-inline" role="form">
				<div class="form-group">
					<label for="divUserList">Empleado</label>
					<div id="divUserList">
						<select class="form-control" id="UserList">
							<option value="todos">Todos</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="divExportContactos">Exportar Contactos</label>
					<div id="divExportContactos">
						<select class="form-control" id="ExportContactos">
							<option value="no-exporta">No exportarlo</option>
							<option value="duplica">Una fila por cada contacto (duplica empresas)</option>
							<option value="no-duplica">Solo el primer contacto de cada empresa (NO duplica empresas)</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<br />
					<button type="button" class="btn btn-default" id="btnExportarBBDD">
						<span class="glyphicon glyphicon-floppy-disk"></span> Exportar
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<?php
	include "footer.php"
?>