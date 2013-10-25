<?php
	require_once("../../lib/DB_mysql.class.php");

	$miconexion = new DB_mysql;
	$miconexion->conectar();
	$miconexion2 = new DB_mysql;
	$miconexion2->conectar();
	$Error=0;
	$cClave="";

	$sql="CREATE TABLE IF NOT EXISTS `".$_POST['NombreTabla']."_contactos` (".
			"`ID` int(10) NOT NULL AUTO_INCREMENT,".
			"`CIFEmpresa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,".
			"`Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,".
			"`Apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,".
			"`Cargo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,".
			"`AreaCargo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,".
			"`email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,".
			"`Telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,".
			"`Movil` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,".
			"`SexoCargo` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,".
			"PRIMARY KEY (`ID`)".
			") ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;";
	$miconexion->consulta($sql);
	if ($miconexion->Error==''){ $Error=1; }
	$sql="SELECT Name,NameBBDD,Titulo,Tipo,TamanoTabla,Clave,Requerido,`Default` FROM disenotabla ORDER BY Columna,Posicion ASC";
	$miconexion2->consulta($sql);

	$sqlCreate="CREATE TABLE IF NOT EXISTS `".$_POST['NombreTabla']."` (";
  	while($row =mysql_fetch_assoc($miconexion2->Consulta_ID)){
		if($row['Tipo']=='VARCHAR'){ $sqlCreate.="`".$row['NameBBDD']."` varchar(".$row['TamanoTabla'].") COLLATE utf8_spanish2_ci ";}
		if($row['Tipo']=='INT'){ $sqlCreate.="`".$row['NameBBDD']."` int(".$row['TamanoTabla'].") "; }
		if($row['Tipo']=='TEXT'){ $sqlCreate.="`".$row['NameBBDD']."` text COLLATE utf8_spanish2_ci "; }
		if($row['Tipo']=='DATETIME'){ $sqlCreate.="`".$row['NameBBDD']."` datetime ,"; }
		if($row['Tipo']=='DATE'){ $sqlCreate.="`".$row['NameBBDD']."` date "; }
		if($row['Tipo']=='TIME'){ $sqlCreate.="`".$row['NameBBDD']."` time "; }
		if($row['Tipo']=='BOOLEAN'){ $sqlCreate.="`".$row['NameBBDD']."` tinyint(1) "; }
		if($row['Tipo']=='MONEDA'){ $sqlCreate.="`".$row['NameBBDD']."` DECIMAL(8,2) "; }

		if ($row['Requerido']==1 || $row['Clave']==1){ $sqlCreate.="NOT NULL,"; } else { $sqlCreate.="DEFAULT NULL,"; }
		if ($row['Clave']==1) {$cClave=$row['NameBBDD'];}
	}
	//$sqlCreate=substr($sqlCreate, 0, -1);
	$sqlCreate.="`UsuarioAcceso` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,";
	$sqlCreate.=" PRIMARY KEY (`".$cClave."`)";
	$sqlCreate.=") ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;";
	$miconexion->consulta($sqlCreate);
	echo json_encode($sqlCreate);
	if ($miconexion->Error==''){ $Error=1; }
	if($Error==0){ echo json_encode("OK"); }else{ echo json_encode("ERROR"); }
?>