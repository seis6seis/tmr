
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>

	<script>
		$('#btnGuardar').click(function(){
	    	var Errores=0;
		    var Cont=0;
		    var contFin=<?=$cont ?>;
		    var msg="";
		    while (Cont<contFin){
				var parametros={
					ridTitulo: $("#idTitulo"+Cont).val(),
					rTitulo: $("#Titulo"+Cont).val(),
					rTipo: $("#Tipo"+Cont+" option:selected").val(),
					rTamanoTabla: $("#TamanoTabla"+Cont).val(),
					rTipoPantalla:  $("#TipoPantalla"+Cont+" option:selected").val(),
					rTamanoPantalla: $("#TamanoPantalla"+Cont).val(),
					rClave: $("#Clave"+Cont).val(),
					rName: $("#Name"+Cont).val(),
					rNameBBDD: $("#NameBBDD"+Cont).val(),
					rRequerido: $("#Requerido"+Cont).val(),
					rColumna: $("#Columna"+Cont).val(),
					rPosicion: $("#Posicion"+Cont).val(),
					rDefault: $("#Default"+Cont).val(),
					rColumnaCSV: $("#ColumnaCSV"+Cont).val()
				};
				var post=$.post("ajax/GuardarRegistro.php", parametros, function (r){  }, 'json').error(function(e){ Errores++; msg=""});
				Cont++;
			}
			if (Errores!=0){ alert ("Error"); }else{ alert("Grabado los datos"); location.reload(); }
		});

		$('#btnGenerar').click(function(){
			var Errores=0;
			var nTabla=window.prompt("Indique el nombre del proyecto SIN espacios en blanco.","");
			var parametros={NombreTabla: nTabla};
			var post=$.post("ajax/CrearTabla.php", parametros, function (r){ }, 'json').error(function(e){ Errores++; msg=""});

			if (Errores!=0){ alert ("Error"); }else{ alert("Se ha creado la tabla"); console.log(); }
		});

	</script>

  </body>
</html>
