<?php
session_start();
//DEBUG
require_once('../FirePHPCore/lib/FirePHPCore/FirePHP.class.php');
$firephp = FirePHP::getInstance(true);
//Fin DEBUG

require_once("../lib/DB_mysql.class.php");
$conexion = new DB_mysql;
$conexion->conectar();

if($_POST['ajaxAccion']=='ListaEmpresas'){
	$sql="SELECT CIF, NombreFiscal, ResultadoLlamada FROM samsung WHERE usuarioacceso='".$_POST['Usuario']."' ORDER BY NombreFiscal ASC";
$firephp->log($sql);
	$conexion->consulta($sql);
	$res="";
	$EmpRealizadas=0;
	$EmpPendientes=0;
	$EmpTotal=0;
	while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
		if (substr($row['ResultadoLlamada'],0,8)=='CUVisita'){
			$res.='<a href="index.php?CIF='.$row['CIF'].'" class="list-group-item';
			if($_POST['CIF']==$row['CIF']) $res.= ' active';
			$res.='"><span class="glyphicon glyphicon-ok glyphicon-verde"></span>'.$row['NombreFiscal'].'</a>'."\n";
			$EmpRealizadas++;
		}else{
			$res.='<a href="index.php?CIF='.$row['CIF'].'" class="list-group-item';
			if($_POST['CIF']==$row['CIF']) $res.= ' active';
			$res.='"><span class="glyphicon glyphicon-remove glyphicon-rojo"></span>'.$row['NombreFiscal'].'</a>'."\n";
			$EmpPendientes++;
		}
		$EmpTotal++;
	}
	$return = Array('ok' => TRUE, 'html' => $res, 'TotalEmpresas'=> $EmpTotal, 'EmpRealizadas' => $EmpRealizadas , 'EmpPendientes' => $EmpPendientes);
}

if($_POST['ajaxAccion']=='RellenarFicha'){

	$sql="SELECT Name,NameBBDD, tipoPantalla FROM disenotabla WHERE Name<>'' ORDER BY Columna, Posicion ASC";
	$conexion->consulta($sql);
	$cont=0;
	while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
		$arrayDisenoTabla[$cont]['name']=$row['Name'];
		$arrayDisenoTabla[$cont]['nameBBDD']=$row['NameBBDD'];
		$arrayDisenoTabla[$cont]['tipoPantalla']=$row['tipoPantalla'];
		$cont++;
	}
	unset($arrayFicha);
	$sql1="SELECT * FROM samsung WHERE CIF='".$_POST['CIF']."'";
	$conexion->consulta($sql1);
	$contador=0;
	while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
		foreach ($row as $key=>$item){		//Recorremos todos los campos del registro
			for($i=0;$i<$cont;$i++){	//Recorremos el array
				if($arrayDisenoTabla[$i]['nameBBDD']==$key){
					$arrayFicha[$contador]['name']=$arrayDisenoTabla[$i]['name'];
					$arrayFicha[$contador]['nameBBDD']=$arrayDisenoTabla[$i]['nameBBDD'];
					$arrayFicha[$contador]['tipoPantalla']=$arrayDisenoTabla[$i]['tipoPantalla'];
					$arrayFicha[$contador]['Text']=$row[$key];
					if ($arrayFicha[$contador]['Text']=='0000-00-00') $arrayFicha[$contador]['Text']='';
					$contador++;
				}
			}
		}
	}
	unset($arrayContactos);
	$sql="SELECT * FROM samsung_contactos WHERE CIFEmpresa='".$_POST['CIF']."'";
	$conexion->consulta($sql);
	$contador=0;
	while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
		$arrayContactos[$contador]['ID']=$row['ID'];
		$arrayContactos[$contador]['Nombre']=$row['Nombre'];
		$arrayContactos[$contador]['Apellidos']=$row['Apellidos'];
		$arrayContactos[$contador]['Cargo']=$row['Cargo'];
		$arrayContactos[$contador]['AreaCargo']=$row['AreaCargo'];
		$arrayContactos[$contador]['email']=$row['email'];
		$arrayContactos[$contador]['Telefono']=$row['Telefono'];
		$arrayContactos[$contador]['Movil']=$row['Movil'];
		$arrayContactos[$contador]['SexoCargo']=$row['SexoCargo'];
		$contador++;
	}
	$return=Array('ok'=>TRUE,'Ficha'=>$arrayFicha, 'Contactos'=> $arrayContactos);
}

if($_POST['ajaxAccion']=='GuardarFicha'){
	$sql="UPDATE samsung SET ";
	foreach($_POST as $nombre_campo => $valor){
		if($nombre_campo!="ajaxAccion" && $nombre_campo!="TotalContactos")
			if($valor=='')
				$sql .= $nombre_campo . "=NULL, ";
			else
				$sql .= $nombre_campo . "='" . $valor . "', ";
	}
	$sql=substr($sql, 0, -2);
	$sql.=" WHERE CIF='".$_POST['CIF']."'";
	$conexion->consulta($sql);
	if($conexion->Error=='')
		$return=Array('ok'=>TRUE, 'sql'=>$sql);
	else
		$return=Array('ok'=>FALSE, 'Error'=> $conexion->Error."    ".$sql);
	
}

if($_POST['ajaxAccion']=='GuardarContactos'){
$firephp ->log("aaaa".$_POST['TotalContactos']);
	$Errores='';
	for($i=0;$i<$_POST['TotalContactos'];$i++){
		$sql="UPDATE samsung_contactos SET ".
				"Nombre='".$_POST['CotactNombre'.$i]."', ".
				"Apellidos='".$_POST['CotactApellidos'.$i]."', ".
				"Cargo='".$_POST['CotactCargo'.$i]."', ".
				"AreaCargo='".$_POST['CotactAreaCargo'.$i]."', ".
				"email='".$_POST['Cotactemail'.$i]."', ".
				"Telefono='".$_POST['CotactTelefono'.$i]."', ".
				"Movil='".$_POST['CotactMovil'.$i]."', ".
				"SexoCargo='".$_POST['CotactSexoCargo'.$i]."' WHERE ID='".$_POST['IDcontacto'.$i]."'";
$firephp ->log($sql);
		$conexion->consulta($sql);
		if($conexion->Error!='')
			$Errores=$conexion->Error;
	}

	if($_POST['CotactNombren']!=''){
		$sql="INSERT INTO samsung_contactos (CIFEmpresa, Nombre, Apellidos, Cargo, AreaCargo, email, Telefono, Movil, SexoCargo) VALUES ".
				"('".$_POST['CIF']."', '".
				$_POST['CotactNombren']."', '".
				$_POST['CotactApellidosn']."', '".
				$_POST['CotactCargon']."', '".
				$_POST['CotactAreaCargon']."', '".
				$_POST['Cotactemailn']."', '".
				$_POST['CotactTelefonon']."', '".
				$_POST['CotactMoviln']."', '".
				$_POST['CotactSexoCargon']."')";
		$conexion->consulta($sql);
		if($conexion->Error!='')
			$Errores=$conexion->Error;
	}


	if($Errores=='')
		$return=Array('ok'=>TRUE, 'sql'=>$sql);
	else
		$return=Array('ok'=>FALSE, 'Error'=> $conexion->Error."    ".$sql);
}
echo json_encode($return);
?>