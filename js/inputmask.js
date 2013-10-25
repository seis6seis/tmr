$(document).ready(function() {
	//Validar los datos introducidos
	$( "[type=date]" ).focusout(function() {
		var currVal = $(this).val();
		if($(this).val()!=''){
			//Declare Regex 
			if (/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/.test(currVal)){
				$(this).removeClass( "inputError");
			}else{
		        alert("Error en la fecha");  
				$(this).addClass( "inputError");
		    }
		}
	});
	$( "[type=url]" ).focusout(function() {
		if($(this).val()!=''){
			if(/^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/|www\.)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/.test($(this).val())){
				$(this).removeClass( "inputError");
			} else {
			    $(this).addClass( "inputError");
			    alert("Error en la Web");
			}
		}
	});
	$( "[type=tel]" ).focusout(function() {
		alert("aa");
	    if($(this).val().length >0 && isNaN($(this).val())) {  
	        $(this).addClass( "inputError");
	        alert("El teléfono solo debe contener números");
	    }else{ $(this).removeClass( "inputError"); }
	});
	$( "[type=number]" ).focusout(function() {
	    if($(this).val().length >0 && isNaN($(this).val())) {  
			$(this).addClass( "inputError");
			alert("Solo debe contener números");
	    }else
	    	$(this).removeClass( "inputError");
	});
	$( "[type=moneda]" ).focusout(function() {
	    if($(this).val().length >0 && isNaN($(this).val())) { 
			$(this).addClass( "inputError");
			alert("Solo debe contener números");  
	    }else
	    	$(this).removeClass( "inputError");
	});
	$( "[type=select]" ).focusout(function() {

	});
	$( "[type=email]" ).focusout(function() {
		// creamos nuestra regla con expresiones regulares.
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		// utilizamos test para comprobar si el parametro valor cumple la regla
		if($(this).val()!=''){
			if(emailReg.test($(this).val())){
				$(this).removeClass( "inputError");
			}else{
				$(this).addClass( "inputError");
				alert("Error con el email");
			}
		}
	});
});