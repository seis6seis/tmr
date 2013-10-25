$(document).ready(function() {
	$("#txtNumPCs").change(function() {
		$("#txtOppPCs").val($("#txtNumPCs").val()*700);
	});
	$("#txtNumTablets").change(function() {
		$("#txtOppTablets").val($("#txtNumTablets").val()*300);
	});
	$("#txtNumMoviles").change(function() {
		$("#txtOppMoviles").val($("#txtNumMoviles").val()*200);
	});
	$("#txtNumImpresion").change(function() {
		$("#txtOppImpresion").val($("#txtNumImpresion").val()*250);
	});
	$("#txtNumLFD").change(function() {
		$("#txtOppLFD").val($("#txtNumLFD").val()*1500);
	});
});
function Logica(){
	var arrayErrores=new Array();
	if($("#txtProyectoPCs").val()=='Sí'){
		if($("#txtNumPCs").val()=='') arrayErrores.push('txtNumPCs');
		if($("#txtFechaEstimadaCompraPCs").val()=='') arrayErrores.push('txtFechaEstimadaCompraPCs');
		if($("#txtDistribuidorPCs").val()=='') arrayErrores.push('txtDistribuidorPCs');
		if($("#txtMarcarPCs").val()=='') arrayErrores.push('txtMarcarPCs');
	}
	if($("#txtProyectoTablets").val()=='Sí'){
		if($("#txtNumTablets").val()=='') arrayErrores.push('txtNumTablets');
		if($("#txtFechaEstimadaCompraTablets").val()=='') arrayErrores.push('txtFechaEstimadaCompraTablets');
		if($("#txtDistribuidorTablets").val()=='') arrayErrores.push('txtDistribuidorTablets');
		if($("#txtMarcarTablets").val()=='') arrayErrores.push('txtMarcarTablets');
	}
	if($("#txtProyectoMoviles").val()=='Sí'){
		if($("#txtNumMoviles").val()=='') arrayErrores.push('txtNumMoviles');
		if($("#txtFechaEstimadaCompraMoviles").val()=='') arrayErrores.push('txtFechaEstimadaCompraMoviles');
		if($("#txtDistribuidorMoviles").val()=='') arrayErrores.push('txtDistribuidorMoviles');
		if($("#txtMarcarMoviles").val()=='') arrayErrores.push('txtMarcarMoviles');
	}
	if($("#txtProyectoImpresion").val()=='Sí'){
		if($("#txtNumImpresion").val()=='') arrayErrores.push('txtNumImpresion');
		if($("#txtFechaEstimadaCompraImpresion").val()=='') arrayErrores.push('txtFechaEstimadaCompraImpresion');
		if($("#txtDistribuidorImpresion").val()=='') arrayErrores.push('txtDistribuidorImpresion');
		if($("#txtMarcarImpresion").val()=='') arrayErrores.push('txtMarcarImpresion');
	}
	if($("#txtProyectoLFD").val()=='Sí'){
		if($("#txtNumLFD").val()=='') arrayErrores.push('txtNumLFD');
		if($("#txtFechaEstimadaCompraLFD").val()=='') arrayErrores.push('txtFechaEstimadaCompraLFD');
		if($("#txtDistribuidorLFD").val()=='') arrayErrores.push('txtDistribuidorLFD');
		if($("#txtMarcarLFD").val()=='') arrayErrores.push('txtMarcarLFD');
	}

	if($("#txtResultadoLlamada").val().substring(0,8)=="CUVisita"){
		$(":input").each(function (index) {
			if ($(this).attr("requerido")=="Si" && $(this).val()=='') {
				if(arrayErrores.indexOf($(this).attr('id'))==0) arrayErrores.push($(this).attr('id'));
			}
		});
	}
	$(":input").each(function (index) {
		if(arrayErrores.indexOf($(this).attr('id'))!=-1)
			$(this).addClass("Requerido");
		else
			$(this).removeClass("Requerido");
	});
	return arrayErrores.length;
}