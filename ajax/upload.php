<?php
//DEBUG
require_once('../FirePHPCore/lib/FirePHPCore/FirePHP.class.php');
$firephp = FirePHP::getInstance(true);
//Fin DEBUG
$return = Array('ok'=>TRUE);
try{
	require_once("../lib/DB_mysql.class.php");
	$conexion = new DB_mysql;
	$conexion->conectar();

	//upload.php
	$upload_folder =getcwd().'/../tmp';
	$nombre_archivo = $_FILES['archivo']['name'];
	$tipo_archivo = $_FILES['archivo']['type'];
	$tamano_archivo = $_FILES['archivo']['size'];
	$tmp_archivo = $_FILES['archivo']['tmp_name'];
	$archivador = $upload_folder . '/' . $nombre_archivo;
	if (!move_uploaded_file($tmp_archivo, $archivador)) {
		$return = Array('ok' => FALSE, 'msg' => "Ocurrio un error al subir el archivo. No pudo guardarse.", 'status' => 'error');
	}else{
			$sql="DROP TABLE tmp;";
			$conexion->consulta($sql);
			$sql="CREATE TABLE tmp LIKE samsung;";
			$conexion->consulta($sql);
			$sql="DROP TABLE tmp_contactos;";
			$conexion->consulta($sql);
			$sql="CREATE TABLE tmp_contactos LIKE samsung_contactos;";
			$conexion->consulta($sql);
			$arrResult = array();
			$handle = fopen($archivador, "r");
			$ErroresInsert="";
			if( $handle ) {
				//Crear Cabecera del INSERT
				$sql="SELECT NameBBDD,ColumnaCSV  FROM `disenotabla` WHERE `ColumnaCSV`>0 ORDER BY `ColumnaCSV` ASC";
				$conexion->consulta($sql);

				$CabInsert="INSERT INTO `tmp` (";

				$Cabecera=Array();
				while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
					$Cabecera[]=$row['ColumnaCSV'];
					$CabInsert.="`".$row['NameBBDD']."`, ";
				}

				$CabInsert.="`UsuarioAcceso`) VALUES (";
				$fila=1;
				while (($data = fgetcsv($handle, 0, ";")) !== false) {
					if ($fila!=1){
						$col=1;
						$sql="";
						$contactoSQL="";
						foreach($data as $key => $row1) {
							if(array_search($col, $Cabecera)!==false){
								$data[$key] = trim( $data[$key] );
								$data[$key] = utf8_encode($data[$key]) ;
								$data[$key] = str_replace('""', '"', $data[$key]);
								$data[$key] = preg_replace("/^\"(.*)\"$/sim", "$1", $data[$key]);
								if($col==5)
									$CabContacto="INSERT INTO `tmp_contactos` (CIFEmpresa, Telefono, Movil, Nombre, Apellidos, SexoCargo, Cargo, AreaCargo) VALUES ('".$data[$key]."', ";
								if($col==29 || $col==30 || $col==37 || $col==38 || $col==41 || $col==43 || $col==45)
									$contactoSQL.="'".$data[$key]."', ";
								$sql.="'".$data[$key]."', ";
							}
							$col++;
						}
						if ($sql!=''){
							$sql.="'".$_POST['Usuario']."')";
							$conexion->consulta($CabInsert.$sql);
$firephp->Log($CabInsert.$sql, "SQL");
							if ($conexion->Error!=""){
$firephp->Error($fila."  -  ".$conexion->Error."  -  ".$CabInsert.$sql, "Error INSERT ".$fila);
								$ErroresInsert.="Fila: ".$fila." Col:".$col." -> Error: ".$conexion->Error."\n";
								$conexion->Error="";
							}
						}
						if ($contactoSQL!=''){
							$contactoSQL= substr($contactoSQL, 0, -2).")";
							$conexion->consulta($CabContacto.$contactoSQL);
$firephp->Log($CabContacto.$contactoSQL, "SQL");
							if ($conexion->Error!=""){
$firephp->Error($fila."  -  ".$conexion->Error."  -  ".$CabContacto.$contactoSQL, "Error INSERT ".$fila);
								$ErroresInsert.="Fila: ".$fila." Col:".$col." -> Error: ".$conexion->Error."\n";
								$conexion->Error="";
							}
						}

					}
					$fila++;
				}	
			}

			fclose($handle);
			unlink($archivador);
	}
}catch (Exception $e){
	$return = Array('ok' => FALSE, 'msg' => "Error:".$e->getCode()."   ".$e->getMessage().". Fila: ".$fila."   Columna: ".$col."   ".$sql, 'status' => 'error');
}
if ($ErroresInsert!="")
	$return = Array('ok' => FALSE, 'msg' => $ErroresInsert, 'status' => 'error');
echo json_encode($return);
?>