<?php
	require_once("../lib/DB_mysql.class.php");
	$conexion = new DB_mysql;
	$conexion->conectar();

	$Resultado="";
	$Errores="";

//Actualizar la lista de usuarios
	if ($_POST['Accion']=="RefreshListUser"){
		$Resultado= "			<select class='form-control' id='UserList'>\n";
		$Resultado.="				<option value='todos'>Todos</option>\n";

	    $sql="SELECT email, Nombre FROM usuarios ORDER BY Nombre ASC;";
	    $conexion->consulta($sql);
	    while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
			$Resultado.= "			<option value='".$row['email']."'>".$row['Nombre']."</option>\n";
	    }
	    $Resultado.="			</select>\n";

		if ($Errores=="")
			echo $Resultado;
		else
			echo "Error: ".$Errores;
	}

?>