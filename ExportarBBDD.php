<?php
header("Cache-Control: public"); 
header("Content-Type: application/octet-stream");
header("Content-Type: text/csv; charset=utf-8");
header("Content-Disposition: attachment; filename=ExportarDatos_".date("Y-m-d").".csv");

	require_once("lib/DB_mysql.class.php");
	$conexion = new DB_mysql;
	$conexion->conectar();
	$conexion2 = new DB_mysql;
	$conexion2->conectar();
	
	$Resultado="";
	$Errores="";

//Exportar BBDD
	if ($_GET['Accion']=="ExportarBBDD"){
		if($_GET['TipoExportacion']=='no-exporta'){
			$sql="SELECT `UsuarioAcceso`, `TOP`, `URL`, `VIA`, `PISO`, `CALLE`, `JULIO`, `BLOQUE`, `JUANAN`, `NUMERO`, `NUMSCH`, `PUERTA`, `LITSEXO`, ".
				"`CODACTR2`, `CODCARGO`, `ESCALERA`, `LITACTR2`, `CODMERCADO`, `CODPERSONA`, `LITMERCADO`, `LITOFICINA`, `CODINGRESOS`, ".
				"`COMPLEMENTO`,  `ACTIVIDADNEGOCIAL`, `CIF`, `NombreFiscal`, ".
				"`NombreComercial`, `GrupoEmpresarial`, `Actividad`, `Facturacion`, `NumEmpleados`, `NumPCsEmpresa`, `Direccion`, `CP`, `POLIGONO`, ".
				"`Poblacion`, `Provincia`, `CCAA`, `Fechallamada`, `NumLlamadasRealizadas`, `CalidadBBDD`, `ResultadoLlamada`, `ActualizarDatosBBDD`, ".
				"`FechaSeguimiento`, `ResumenConversacion`, `Lead`, `ProyectoPCs`, `NumPCs`, `OppPCs`, `FechaEstimadaCompraPCs`, `DistribuidorPCs`, ".
				"`MarcarPCs`, `ProyectoTablets`, `NumTablets`, `OppTablets`, `FechaEstimadaCompraTablets`, `DistribuidorTablets`, `MarcarTablets`, ".
				"`ProyectoMoviles`, `NumMoviles`, `OppMoviles`, `FechaEstimadaCompraMoviles`, `DistribuidorMoviles`, `MarcarMoviles`, `ProyectoImpresion`, ".
				"`NumImpresion`, `OppImpresion`, `FechaEstimadaCompraImpresion`, `DistribuidorImpresion`, `MarcarImpresion`, `ProyectoLFD`, `NumLFD`, ".
				"`OppLFD`, `FechaEstimadaCompraLFD`, `DistribuidorLFD`, `MarcarLFD` FROM `samsung`";

			$salida_csv='"UsuarioAcceso";"TOP";"URL";"VIA";"PISO";"CALLE";"JULIO";"BLOQUE";"JUANAN";"NUMERO";"NUMSCH";"PUERTA";"LITSEXO";'.
				'"CODACTR2";"CODCARGO";"ESCALERA";"LITACTR2";"CODMERCADO";"CODPERSONA";"LITMERCADO";"LITOFICINA";"CODINGRESOS";'.
				'"COMPLEMENTO";"ACTIVIDADNEGOCIAL";"CIF";"NombreFiscal";'.
				'"NombreComercial";"GrupoEmpresarial";"Actividad";"Facturacion";"NumEmpleados";"NumPCsEmpresa";"Direccion";"CP";"POLIGONO";'.
				'"Poblacion";"Provincia";"CCAA";"Fechallamada";"NumLlamadasRealizadas";"CalidadBBDD";"ResultadoLlamada";"ActualizarDatosBBDD";'.
				'"FechaSeguimiento";"ResumenConversacion";"Lead";"ProyectoPCs";"NumPCs";"OppPCs";"FechaEstimadaCompraPCs";"DistribuidorPCs";'.
				'"MarcarPCs";"ProyectoTablets";"NumTablets";"OppTablets";"FechaEstimadaCompraTablets";"DistribuidorTablets";"MarcarTablets";'.
				'"ProyectoMoviles";"NumMoviles";"OppMoviles";"FechaEstimadaCompraMoviles";"DistribuidorMoviles";"MarcarMoviles";"ProyectoImpresion";'.
				'"NumImpresion";"OppImpresion";"FechaEstimadaCompraImpresion";"DistribuidorImpresion";"MarcarImpresion";"ProyectoLFD";"NumLFD";'.
				'"OppLFD";"FechaEstimadaCompraLFD";"DistribuidorLFD";"MarcarLFD"';
			$conexion->consulta($sql);
			if($conexion->Error==''){
				while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
					$salida_csv.="\n";
					foreach ($row as $key => $value){
						if($value=='0000-00-00') $value='';
						$salida_csv.='"'.mb_convert_encoding($value, 'UTF-16LE', 'UTF-8').'";';
					}
				}
				echo $salida_csv;
				exit();
			}else
				echo "Error: ".$conexion->Error."<br>".$sql;
		}
		if($_GET['TipoExportacion']=='duplica'){
			$sql="SELECT `UsuarioAcceso`, `TOP`, `URL`, `VIA`, `PISO`, `CALLE`, `JULIO`, `BLOQUE`, `JUANAN`, `NUMERO`, `NUMSCH`, `PUERTA`, `LITSEXO`, ".
				"`CODACTR2`, `CODCARGO`, `ESCALERA`, `LITACTR2`, `CODMERCADO`, `CODPERSONA`, `LITMERCADO`, `LITOFICINA`, `CODINGRESOS`, ".
				"`COMPLEMENTO`,  `ACTIVIDADNEGOCIAL`, `CIF`, `NombreFiscal`, ".
				"`NombreComercial`, `GrupoEmpresarial`, `Actividad`, `Facturacion`, `NumEmpleados`, `NumPCsEmpresa`, `Direccion`, `CP`, `POLIGONO`, ".
				"`Poblacion`, `Provincia`, `CCAA`, `Fechallamada`, `NumLlamadasRealizadas`, `CalidadBBDD`, `ResultadoLlamada`, `ActualizarDatosBBDD`, ".
				"`FechaSeguimiento`, `ResumenConversacion`, `Lead`, `ProyectoPCs`, `NumPCs`, `OppPCs`, `FechaEstimadaCompraPCs`, `DistribuidorPCs`, ".
				"`MarcarPCs`, `ProyectoTablets`, `NumTablets`, `OppTablets`, `FechaEstimadaCompraTablets`, `DistribuidorTablets`, `MarcarTablets`, ".
				"`ProyectoMoviles`, `NumMoviles`, `OppMoviles`, `FechaEstimadaCompraMoviles`, `DistribuidorMoviles`, `MarcarMoviles`, `ProyectoImpresion`, ".
				"`NumImpresion`, `OppImpresion`, `FechaEstimadaCompraImpresion`, `DistribuidorImpresion`, `MarcarImpresion`, `ProyectoLFD`, `NumLFD`, ".
				"`OppLFD`, `FechaEstimadaCompraLFD`, `DistribuidorLFD`, `MarcarLFD` FROM `samsung`";

			$salida_csv='"UsuarioAcceso";"TOP";"URL";"VIA";"PISO";"CALLE";"JULIO";"BLOQUE";"JUANAN";"NUMERO";"NUMSCH";"PUERTA";"LITSEXO";'.
				'"CODACTR2";"CODCARGO";"ESCALERA";"LITACTR2";"CODMERCADO";"CODPERSONA";"LITMERCADO";"LITOFICINA";"CODINGRESOS";'.
				'"COMPLEMENTO";"ACTIVIDADNEGOCIAL";"CIF";"NombreFiscal";'.
				'"NombreComercial";"GrupoEmpresarial";"Actividad";"Facturacion";"NumEmpleados";"NumPCsEmpresa";"Direccion";"CP";"POLIGONO";'.
				'"Poblacion";"Provincia";"CCAA";"Fechallamada";"NumLlamadasRealizadas";"CalidadBBDD";"ResultadoLlamada";"ActualizarDatosBBDD";'.
				'"FechaSeguimiento";"ResumenConversacion";"Lead";"ProyectoPCs";"NumPCs";"OppPCs";"FechaEstimadaCompraPCs";"DistribuidorPCs";'.
				'"MarcarPCs";"ProyectoTablets";"NumTablets";"OppTablets";"FechaEstimadaCompraTablets";"DistribuidorTablets";"MarcarTablets";'.
				'"ProyectoMoviles";"NumMoviles";"OppMoviles";"FechaEstimadaCompraMoviles";"DistribuidorMoviles";"MarcarMoviles";"ProyectoImpresion";'.
				'"NumImpresion";"OppImpresion";"FechaEstimadaCompraImpresion";"DistribuidorImpresion";"MarcarImpresion";"ProyectoLFD";"NumLFD";'.
				'"OppLFD";"FechaEstimadaCompraLFD";"DistribuidorLFD";"MarcarLFD";"Nombre";"Apellidos";"Cargo";"AreaCargo";"email";"Telefono";"Movil";"SexoCargo"';
			$conexion->consulta($sql);
			if($conexion->Error==''){
				while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
					$salida_empresa="";
					foreach ($row as $key => $value){
						if($value=='0000-00-00') $value='';
						$salida_empresa.='"'.mb_convert_encoding($value, 'UTF-16LE', 'UTF-8').'";';
					}
					$sql2="SELECT Nombre, Apellidos, Cargo, AreaCargo, email, Telefono, Movil, SexoCargo FROM samsung_contactos WHERE CIFEmpresa='".$row['CIF']."' ORDER BY ID ASC";
					$conexion2->consulta($sql2);
					while($row2 =mysql_fetch_assoc($conexion2->Consulta_ID)){
						$salida_csv.="\n";
						$salida_contacto="";
						foreach ($row2 as $key2 => $value2){
							if($value2=='0000-00-00') $value2='';
							$salida_contacto.='"'.mb_convert_encoding($value2, 'UTF-16LE', 'UTF-8').'";';
						}
						$salida_csv.=$salida_empresa.$salida_contacto;
					}
				}
				echo $salida_csv;
				exit();
			}else
				echo "Error: ".$conexion->Error."<br>".$sql;
		}
	}
?>