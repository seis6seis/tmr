<?php
	require_once("../lib/DB_mysql.class.php");
	$conexion = new DB_mysql;
	$conexion->conectar();

	$Resultado="";
	$Errores="";

//Actualizar la lista de usuarios
	if ($_POST['Accion']=="RefreshListUser"){
		$Resultado= "			<select class='form-control' id='UserList' onchange='EscogerUsuario();'>\n";
		$Resultado.="				<option value='new-user'>Nuevo Usuario</option>\n";

	    $sql="SELECT email, Nombre FROM usuarios ORDER BY Nombre ASC;";
	    $conexion->consulta($sql);
	    while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
			$Resultado.= "			<option value='".$row['email']."'>".$row['Nombre']."</option>\n";
	    }
	    $Resultado.="			</select>\n";
	}
//Actualizar la lista de usuarios
	if ($_POST['Accion']=="RefreshListUserBBDD2"){
		$Resultado= "			<select class='form-control' id='userAccesoBBDD'>\n";
		$Resultado.="				<option>-- Selecciona Usuario --</option>\n";

	    $sql="SELECT email, Nombre FROM usuarios WHERE Permiso=0 ORDER BY Nombre ASC;";
	    $conexion->consulta($sql);
	    while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
			$Resultado.= "			<option value='".$row['email']."'>".$row['Nombre']."</option>\n";
	    }
	    $Resultado.="			</select>\n";
	}
//Muestra la ficha del usuario
	if ($_POST['Accion']=="FichaUsuario"){
		if ($_POST['Usuario']!="new-user"){
			$sql="SELECT email, Nombre, Permiso FROM usuarios WHERE email='".$_POST['Usuario']."';";
			$conexion->consulta($sql);
			if ($conexion->Error!='') $Errores=$conexion->Error;
			if ($conexion->numregistros()==0) {
				$Errores="No se puede localizar usuario en la BBDD.";
			}else{
				$row =mysql_fetch_assoc($conexion->Consulta_ID);
				$Resultado=json_encode(array("email"=>$row['email'], "Nombre"=>$row['Nombre'], "Permiso"=>$row['Permiso']));
			}
		}
	}

//Guardar los datos de un usuario
	if($_POST['Accion']=="SaveUser"){
		if ($_POST['UserList']=="new-user"){
			if($_POST['Clave']!=''){
				$sql="INSERT INTO usuarios (email,Nombre,Permiso, Clave) VALUES ".
					"('".$_POST['email']."','".$_POST['Nombre']."','".$_POST['Permisos']."','".md5($_POST['Clave'])."');";
					echo $sql;
				$conexion->consulta($sql);
				if ($conexion->Error!='') $Errores=$conexion->Error;
			}else{
				$Errores="Has de introducir una clave";
			}
		}else{
			if($_POST['Clave']==''){
				$sql="UPDATE usuarios SET email='".$_POST['email']."',Nombre='".$_POST['Nombre']."',Clave='".md5($_POST['Clave']).
						"',Permiso='".$_POST['Permisos']."' WHERE email='".$_POST['UserList']."';";
			}else{
				$sql="UPDATE usuarios SET email='".$_POST['email']."',Nombre='".$_POST['Nombre'].
						"',Permiso='".$_POST['Permisos']."' WHERE email='".$_POST['UserList']."';";
			}
			$conexion->consulta($sql);
			if ($conexion->Error!='') $Errores=$conexion->Error;
		}
	}

//Borrar los datos de un usuario
	if($_POST['Accion']=="DeleteUSer"){
		if ($_POST['UserList']!="new-user"){
			$sql="DELETE FROM usuarios WHERE email='".$_POST['UserList']."';";
			$conexion->consulta($sql);
			if ($conexion->Error!='') $Errores=$conexion->Error;
		}else{
			$Errores="Se necesita marcar a quien borrar.";
		}
	}
	if ($Errores=="")
		echo $Resultado;
	else
		echo "Error: ".$Errores;
?>