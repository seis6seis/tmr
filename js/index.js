		
function ValidarInputContact(ID){
	if($(ID).attr("type")=='tel'){
	    if($(ID).val().length >0 && isNaN($(ID).val())) {  
	        $(ID).addClass( "inputError");
	        alert("El teléfono solo debe contener números");
	    }else{ $(ID).removeClass( "inputError"); }
	}
	if($(ID).attr("type")=='email'){
		// creamos nuestra regla con expresiones regulares.
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		// utilizamos test para comprobar si el parametro valor cumple la regla
		if($(ID).val()!=''){
			if(emailReg.test($(ID).val())){
				$(ID).removeClass( "inputError");
			}else{
				$(ID).addClass( "inputError");
				alert("Error con el email");
			}
		}
	}
}

	//Fecha
	function FechaVoltear(Fecha, Separador='-'){
		if(Fecha!==null){
			if (Fecha.length==10){
				var pieces = Fecha.split("-");
				pieces.reverse();
				return pieces.join("-");
			}
		}
	}
	//Cargar lista de Empresas
	function ListaEmpresas(CIF){
		var parametros = {'CIF': CIF, 'ajaxAccion':'ListaEmpresas', 'Usuario': $.cookie('tmr_emailTMP')};
		$.ajax({
			url: "ajax/index.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				
				var Res=jQuery.parseJSON(response);
				if(Res['TotalEmpresas']==0){
					$(".modal-title").html("No hay Empresas");
					$("#modal-close").show();
					$(".modal-body").html("Actualmente no dispone de empresas en la BBDD.<br>Consulte con su responsable.");
					$('#Modal').modal({show: true, keyboard: true,backdrop: true});
				}else{
					$('#Modal').modal('hide');
					$("#ListEmpresas").html('      <div class="list-group" id="ListEmpresas">'+Res['html']+'</div>');
					$("#ResultadoEmpresas").html("<b>Empresas Realizadas:</b> "+Res['EmpRealizadas']+"<br/><b>Empresas Pendientes:</b> "+Res['EmpPendientes']);
				}
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
		if(CIF!=''){
			ActualizarDatosFicha(CIF);
		}
	}

	function ActualizarDatosFicha(CIF){
		var parametros = {'CIF': CIF, 'ajaxAccion':'RellenarFicha'};
		$.ajax({
			url: "ajax/index.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				var Res=jQuery.parseJSON(response);
				for(i=0;i<Res.Ficha.length;i++){
					//alert(Res.Ficha[i]['name'].toLowerCase());
					if(Res.Ficha[i]['tipoPantalla'].toLowerCase()=='date')
						$("#"+Res.Ficha[i]['name']).val(FechaVoltear(Res.Ficha[i]['Text'],"-"));
					else
						$("#"+Res.Ficha[i]['name']).val(Res.Ficha[i]['Text']);
				}
				
				var Tabla="				<table class='table' id='tablaContactos'>\n";
				Tabla+="					<thead>\n";
				Tabla+="						<tr>\n";
				Tabla+="							<th>Nombre</th>\n";
				Tabla+="							<th>Apellidos</th>\n";
				Tabla+="							<th>Cargo</th>\n";
				Tabla+="							<th>Area Cargo</th>\n";
				Tabla+="							<th>email</th>\n";
				Tabla+="							<th>Teléfono</th>\n";
				Tabla+="							<th>Móvil</th>\n";
				Tabla+="							<th>Sexo Cargo</th>\n";
				Tabla+="						</tr>\n";
				Tabla+="					</thead>\n";
				Tabla+="					<tbody>\n";
				for(i=0;i<Res.Contactos.length;i++){
					Tabla+="						<tr>\n";
					Tabla+="							<td>\n";
					Tabla+="								<input type='hidden' id='IDcontacto"+i+"' value='"+Res.Contactos[i]['ID']+"' Contacto='si'>\n";
					Tabla+="								<input type='text' size=5 class='form-control' id='CotactNombre"+i+"' value='"+Res.Contactos[i]['Nombre']+"' maxlength='50' Contacto='si'>\n";
					Tabla+="							</td>\n";
					Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactApellidos"+i+"' value='"+Res.Contactos[i]['Apellidos']+"' maxlength='50' Contacto='si'>\n";
					Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactCargo"+i+"' value='"+Res.Contactos[i]['Cargo']+"' maxlength='50' Contacto='si'></td>\n";
					Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactAreaCargo"+i+"' value='"+Res.Contactos[i]['AreaCargo']+"' maxlength='50' Contacto='si'></td>\n";
					Tabla+="							<td><input type='email' size=5 class='form-control' id='Cotactemail"+i+"' value='"+Res.Contactos[i]['email']+"' maxlength='255' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
					Tabla+="							<td><input type='tel' size=5 class='form-control' id='CotactTelefono"+i+"' value='"+Res.Contactos[i]['Telefono']+"' maxlength='9' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
					Tabla+="							<td><input type='tel' size=5 class='form-control' id='CotactMovil"+i+"' value='"+Res.Contactos[i]['Movil']+"' maxlength='9' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
					Tabla+="							<td><select id='CotactSexoCargo"+i+"' class='form-control' Contacto='si'>\n";
					Tabla+="									<option></option>\n";
					Tabla+="									<option value='H'";
					if(Res.Contactos[i]['SexoCargo']=='H')	Tabla+='  selected="selected"';
					Tabla+=">Hombre</option>\n";
					Tabla+="									<option value='M'";
					if(Res.Contactos[i]['SexoCargo']=='M')	Tabla+='  selected="selected"';
					Tabla+=">Mujer</option>\n";
					Tabla+="							</select></td>\n";
					//Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactSexoCargo"+i+"' value='"+Res.Contactos[i]['SexoCargo']+"' maxlength='1' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
					Tabla+="						<tr>\n";
				}
				Tabla+="						<tr>\n";
				Tabla+="							<td>\n";
				Tabla+="								<input type='hidden' id='IDcontacton' value='' Contacto='si'>\n";
				Tabla+="								<input type='text' size=5 class='form-control' id='CotactNombren' value='' maxlength='50' Contacto='si'>\n";
				Tabla+="							</td>\n";
				Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactApellidosn' value='' maxlength='50' Contacto='si'>\n";
				Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactCargon' value='' maxlength='50' Contacto='si'></td>\n";
				Tabla+="							<td><input type='text' size=5 class='form-control' id='CotactAreaCargon' value='' maxlength='50' Contacto='si'></td>\n";
				Tabla+="							<td><input type='email' size=5 class='form-control' id='Cotactemailn' value='' maxlength='255' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
				Tabla+="							<td><input type='tel' size=5 class='form-control' id='CotactTelefonon' value='' maxlength='9' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
				Tabla+="							<td><input type='tel' size=5 class='form-control' id='CotactMoviln' value='' maxlength='9' Contacto='si' onblur='ValidarInputContact(this)'></td>\n";
				Tabla+="							<td><select id='CotactSexoCargo"+i+"' class='form-control' Contacto='si'>\n";
				Tabla+="									<option></option>\n";
				Tabla+="									<option value='H'>Hombre</option>\n";
				Tabla+="									<option value='M'>Mujer</option>\n";
				Tabla+="							</select>\n";
				Tabla+="							<input type='hidden' id='TotalContactos' value='"+Res.Contactos.length+"'  Contacto='si'></td>\n";
				Tabla+="						<tr>\n";
				Tabla+="					</tbody>\n";
				Tabla+="				</table>\n";

				$("#divDatosContacto").html(Tabla);
			},
			error: function (error) {
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				$('#Modal').modal('hide');
			}
		});
	}

$(document).ready(function() {
	$("#btnGuardarSiguiente").click(function(){
		var Errores=0;
		$(".modal-title").html("Actualizando datos");
		$("#modal-close").hide();
		$(".modal-body").html("Procesando, espere por favor ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
		$('#Modal').modal({show: true, keyboard: false,backdrop: false});
		Errores=Logica();
		//Si no hay errores guardar y pasar al siguiente
		if(Errores==0){
			$('#Modal').modal('hide');
			var parametros = "";
			$(":input").each(function (index) {
				if($(this).attr("BD")!=null){
					if($(this).attr("type")=='text' && $(this).attr("fecha")=='si')
						parametros+=$(this).attr("BD")+"="+FechaVoltear($(this).val(),'-')+"&";
					else
						parametros+=$(this).attr("BD")+"="+$(this).val()+"&";
				}
			});
			parametros+= "ajaxAccion=GuardarFicha";
			$.ajax({
				url: "ajax/index.php",
				cache: false,
				type: "POST",
				data:  parametros,
				beforeSend: function () {
					$(".modal-title").html("Actualizando datos");
					$("#modal-close").hide();
					$(".modal-body").html("Procesando, espere por favor ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
					$('#Modal').modal({show: true, keyboard: false,backdrop: false});
				},
				success:  function (response) {
					$('#Modal').modal('hide');
					GuardarContacto();
				},
				error: function (error) {
					$('#Modal').modal('hide');
					alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
				}
			});
		}else{
			$('#Modal').modal('hide');
			alert("Tienes campos sin rellenar, para poder seguir rellenelos.")
		}
		$('#Modal').modal('hide');
	});

	function GuardarContacto(){
		$('#Modal').modal('hide');
		var parametros = "";
		$(":input").each(function (index) {
			if($(this).attr("Contacto")=='si'){
				parametros+=$(this).attr("id")+"="+$(this).val()+"&";
			}
		});
		parametros+= "ajaxAccion=GuardarContactos&CIF="+$("#txtCIF").val()+"&TotalContactos="+$("#TotalContactos").val();
		$.ajax({
			url: "ajax/index.php",
			cache: false,
			type: "POST",
			data:  parametros,
			beforeSend: function () {
				$(".modal-title").html("Actualizando datos");
				$("#modal-close").hide();
				$(".modal-body").html("Procesando, espere por favor ...<br/><br/><br/><center><img src='./img/loading.gif' alt='Cargando, espere.' title='Cargando, espere.' width='40px' height='40px' ></center>");
				$('#Modal').modal({show: true, keyboard: false,backdrop: false});
			},
			success:  function (response) {
				$('#Modal').modal('hide');
				ListaEmpresas($("#txtCIF").val());
				alert("Guardado los cambios.");
			},
			error: function (error) {
				$('#Modal').modal('hide');
				alert('Error ('+error.StatusCode+'): '+ error.statusText+'\nSi el error persiste pongase en contacto con el Administrador.');
			}
		});
	}
});