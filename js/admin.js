function EscogerUsuario(){
	if($("#UserList option:selected").val()=='new-user'){
		$("#userNombre").val('');
		$("#useremail").val('');
		$("#userPermiso").children().removeAttr("selected");
		$("#userClave").val('');
	}else{
		var parametros = {"Accion": "FichaUsuario", "Usuario": $("#UserList option:selected").val() };
		$.ajax({
			url: "ajax/admin.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor puede llevar un rato ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				if (response.substring(0,6)=="Error:")
					alert(response);
				else{
					$("#userPermiso").children().removeAttr("selected");
					var Res=jQuery.parseJSON(response);
					$("#userNombre").val(Res['Nombre']);
					$("#useremail").val(Res['email']);
					$("#userPermiso option[value='"+Res['Permiso']+"']").attr("selected",true);
				}
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	}
}

$(document).ready(function() {
	ActualizarListaUsuarios();

	function ActualizarListaUsuarios(){
		var parametros = {"Accion": "RefreshListUser"};
		$.ajax({
			url: "ajax/admin.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				if (response.substring(0,6)=="Error:")
					alert(response);
				else
					$("#divUserList").html(response);				
					$("#userNombre").val('');
					$("#useremail").val('');
					$("#userPermiso").children().removeAttr("selected");
					$("#userClave").val('');
					ActualizarListaUsuarios2();
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	}
	function ActualizarListaUsuarios2(){
		var parametros = {"Accion": "RefreshListUserBBDD2"};
		$.ajax({
			url: "ajax/admin.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				if (response.substring(0,6)=="Error:")
					alert(response);
				else
					$("#divUserAccesoBBDD").html(response);				
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	}
//Editar Usuarios
	$( "#btnSaveUser" ).click(function() {
		var parametros = {"Accion": "SaveUser",
							"UserList": $("#UserList option:selected").val(),
							"Nombre": $("#userNombre").val(),
							"email": $("#useremail").val(),
							"Permisos": $("#userPermiso option:selected").val(),
							"Clave": $("#userClave").val() };
		$.ajax({
			url: "ajax/admin.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				if (response.substring(0,6)=="Error:") 
					alert(response);
				else
					ActualizarListaUsuarios();
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	});

	$( "#btnDeleteUser" ).click(function() {
		var r=confirm("¿Estas seguro que deseas eliminarlo?");
		if (r==true){
			var parametros = {"Accion": "DeleteUSer",
								"UserList": $("#UserList option:selected").val()};
			$.ajax({
				url: "ajax/admin.php",
				cache: false,
				type: "POST",
				data:  parametros,
				beforeSend: function () {
					$(".modal-title").html("Actualizando datos");
					$("#modal-close").hide();
					$(".modal-body").html("Procesando, espere por favor...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
					$('#Modal').modal({show: true, keyboard: false,backdrop: false});
				},
				success:  function (response) {
					$('#Modal').modal('hide');
					if (response.substring(0,6)=="Error:")
						alert(response);
					else
						ActualizarListaUsuarios();
				},
				error: function (error) {
					alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
					$('#Modal').modal('hide');
				}
			});
		}
	});

	$( "#btnImportarBBDD" ).click(function() {
		var inputFileImage = document.getElementById("BBDDfile");
		var file = inputFileImage.files[0];
		var data = new FormData();

		data.append('archivo',file);
		data.append('Usuario',$("#userAccesoBBDD").val());
		$.ajax({
			url:"ajax/upload.php",
			type:'POST',
			contentType:false,
			data:data,
			processData:false,
			cache:false,
			beforeSend: function () {
				$(".modal-title").html("Subiendo archivo");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor. El proceso puede demorarse varios minutos ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				var res = jQuery.parseJSON(response);
				alert('Error ('+res.status+'): '+ res.msg+'\nSi el error persiste pongase en contacto con el Administrador.');

			},
			error: function (errores) {
				var res = jQuery.parseJSON(errores);
				alert('Error ('+res.status+'): '+ res.msg+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	});
});