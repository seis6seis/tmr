<?php
  $Pagina="admin";
  include "header.php";
?>
<div class="container">
	<div class="row">
	  	<div class="col-md-12">
	  		<h3>Editar usuarios</h3>
	  	</div>
	    <div class="col-md-2">
			<div class="form-group">
				<label for="userNombre">Usuarios a Editar</label>
	    		<div id="divUserList">
					<select class="form-control" id="UserList" onchange="EscogerUsuario();">
						<option value="new-user">Nuevo Usuario</option>
					</select>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<form class="form-inline" role="form">
				<div class="form-group">
					<label for="userNombre">Nombre</label>
					<input type="text" class="form-control" id="userNombre" placeholder="Nombre" size="10" maxlength="255" title="Nombre" required>
				</div>
				<div class="form-group">
					<label for="useremail">email</label>
					<input type="email" class="form-control" id="useremail" placeholder="email" size="15" maxlength="255" title="email" required>
				</div>
				<div class="form-group">
					<label for="userPermiso">Permiso</label>
					<select class="form-control" id="userPermiso">
						<option value="0">Usuario</option>
						<option value="1">Responsable</option>
					</select>
				</div>
				<div class="form-group">
					<label for="userClave">Clave</label>
					<input type="text" class="form-control" id="userClave" placeholder="Clave" size="7" maxlength="50" title="Dejar en blanco si no desea cambiarla." required>
				</div>

				<div class="btn-group">
					<br/>
					<button type="button" class="btn btn-default" id="btnSaveUser">
						<span class="glyphicon glyphicon-floppy-disk glyphicon-verde"></span> Guardar
					</button>
					<button type="button" class="btn btn-default" id="btnDeleteUser">
						<span class="glyphicon glyphicon-remove glyphicon-rojo"></span> Eliminar
					</button>
				</div>
			</form>
			<hr>
		</div>
		<div class="col-md-2"><h3>BBDD</h3></div>
		<div class="col-md-10">
			<br /><br />
			<p>Descargar plantilla <a href="#" title="Descargar CSV plantilla" id="btnPlantillaCSV">Pulse aquí</a></p>
			<form class="form-inline" role="form">
				<div class="form-group">
					<label for="BBDDfile">Fichero CSV</label>
					<input type="file" class="form-control" id="BBDDfile" name="BBDDfile" placeholder="Fichero BBDD" size="255" maxlength="255" title="Fichero CSV con la BBDD a Importar." required>
				</div>
				<div class="form-group">
					<label for="userAccesoBBDD">Usuario que puede acceder</label>
					<div id="divUserAccesoBBDD">
						<select class="form-control" id="userAccesoBBDD">
							<option value="TODOS">Todos los Usuarios</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<br />
					<button type="button" class="btn btn-default" id="btnImportarBBDD">
						<span class="glyphicon glyphicon-floppy-disk glyphicon-verde"></span> Importar
					</button>
				</div>
			</form>
			<hr>
		</div>
	</div>
</div>
<?php
  include "footer.php"
?>