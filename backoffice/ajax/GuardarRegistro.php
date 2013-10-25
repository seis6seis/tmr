<?php
	require_once("../../lib/DB_mysql.class.php");

	$miconexion = new DB_mysql;
	$miconexion->conectar();

	if($_POST['ridTitulo']==''){
		$sql="INSERT INTO disenotabla (Titulo, Tipo, TamanoTabla, TipoPantalla, TamanoPantalla, Clave, Name, NameBBDD, Requerido, Columna, Posicion, `Default`, ColumnaCSV) ".
			"VALUES ('".$_POST['rTitulo']."', '".$_POST['rTipo']."', '".$_POST['rTamanoTabla']."', '".$_POST['rTipoPantalla']."', '".$_POST['rTamanoPantalla'].
			"', '".$_POST['rClave']."', '".$_POST['rName']."', '".$_POST['rNameBBDD']."', '".$_POST['rRequerido']."', '".$_POST['rColumna']."', '".$_POST['rPosicion']."', '".$_POST['rDefault']."', '".$_POST['rColumnaCSV']."')";
	}else{
		$sql="UPDATE disenotabla SET Titulo='".$_POST['rTitulo']."', Tipo='".$_POST['rTipo']."', TamanoTabla='".$_POST['rTamanoTabla']."', ".
		"TipoPantalla='".$_POST['rTipoPantalla']."', TamanoPantalla='".$_POST['rTamanoPantalla']."', Clave='".$_POST['rClave']."', Name='".$_POST['rName']."', ".
		"NameBBDD='".$_POST['rNameBBDD']."', Requerido='".$_POST['rRequerido']."', Columna='".$_POST['rColumna']."', Posicion='".$_POST['rPosicion']."', `Default`='".$_POST['rDefault']."', ColumnaCSV='".$_POST['rColumnaCSV'].
		"' WHERE Titulo='".$_POST['ridTitulo']."'";
	}

	$miconexion->consulta($sql);

	if ($miconexion->Error==''){
		echo json_encode("OK");
	}else{ echo json_encode("ERROR"); }
?>