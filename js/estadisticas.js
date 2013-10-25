$(document).ready(function() {
	ActualizarListaUsuarios();

	function ActualizarListaUsuarios(){
		var parametros = {"Accion": "RefreshListUser"};
		$.ajax({
			url: "ajax/estadisticas.php",
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
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	}

	$( "#btnExportarBBDD" ).click(function() {
		var parametros = {"Accion": "ExportarBBDD", "Empleado": $("#UserList").val(), "TipoExportacion": $("#ExportContactos").val()};

		$(".modal-title").html("Creando CSV");
		$("#modal-close").hide();
		$(".modal-body").html("Procesando, espere por favor...<br/><br/><br/><center><img src='./img/loading.gif' alt='Generando fichero' title='Generando fichero' width='40px' height='40px' ></center>");
		$('#Modal').modal({show: true, keyboard: false,backdrop: false});		
		document.location.href='ExportarBBDD.php?Accion=ExportarBBDD&Empleado='+$("#UserList").val()+'&TipoExportacion='+$("#ExportContactos").val();
		$('#Modal').modal('hide');
	});
});