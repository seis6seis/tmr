-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-10-2013 a las 03:01:46
-- Versión del servidor: 5.5.32-0ubuntu0.13.04.1
-- Versión de PHP: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crm_tmr`
--
CREATE DATABASE `crm_tmr` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `crm_tmr`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disenotabla`
--

CREATE TABLE IF NOT EXISTS `disenotabla` (
  `Titulo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre que tendra',
  `Tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'VARCHAR' COMMENT 'Tipo que tiene en MySQL',
  `TamanoTabla` int(5) DEFAULT '50' COMMENT 'Tamaño del dato en MySQL',
  `tipoPantalla` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Tipo que sera en la WEB en el input',
  `TamanoPantalla` int(5) DEFAULT NULL COMMENT 'Tamaño e la caja en el input',
  `Clave` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 Si es campo clave',
  `Name` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'Nombre que tiene en MySQL',
  `NameBBDD` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre que tendra en la BBDD',
  `Requerido` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Si el campo es obligatorio',
  `Columna` int(2) DEFAULT '1' COMMENT 'Numero de columna que se muestra. 0 ES INVISIBLE',
  `Posicion` int(3) DEFAULT NULL COMMENT 'Poasicion dentro de la columna',
  `Default` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'En caso que tenga valor por defecto',
  `ColumnaCSV` int(3) DEFAULT NULL COMMENT 'Poner el numero de columna en CSV que se carga vacio es que no esta',
  PRIMARY KEY (`Titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `disenotabla`
--

INSERT INTO `disenotabla` (`Titulo`, `Tipo`, `TamanoTabla`, `tipoPantalla`, `TamanoPantalla`, `Clave`, `Name`, `NameBBDD`, `Requerido`, `Columna`, `Posicion`, `Default`, `ColumnaCSV`) VALUES
('¿Con qué Marcas de Impresion Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarImpresion', 'MarcarImpresion', 0, 6, 6, '', 77),
('¿Con qué Marcas de LFD Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarLFD', 'MarcarLFD', 0, 7, 6, '', 83),
('¿Con qué Marcas de Moviles Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarMoviles', 'MarcarMoviles', 0, 5, 6, '', 71),
('¿Con qué Marcas de PCs Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarPCs', 'MarcarPCs', 0, 3, 6, '', 59),
('¿Con qué Marcas de Tablets Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarTablets', 'MarcarTablets', 0, 4, 6, '', 65),
('¿Qué Distribuidor/es le venden los Impresion habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorImpresion', 'DistribuidorImpresion', 0, 6, 5, '', 76),
('¿Qué Distribuidor/es le venden los LFD habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorLFD', 'DistribuidorLFD', 0, 7, 5, '', 82),
('¿Qué Distribuidor/es le venden los Moviles habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorMoviles', 'DistribuidorMoviles', 0, 5, 5, '', 70),
('¿Qué Distribuidor/es le venden los PCs habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorPCs', 'DistribuidorPCs', 0, 3, 5, '', 58),
('¿Qué Distribuidor/es le venden los Tablets habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorTablets', 'DistribuidorTablets', 0, 4, 5, '', 64),
('¿Tiene proyecto de Impresion?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoImpresion', 'ProyectoImpresion', 0, 6, 1, '', 72),
('¿Tiene proyecto de LFD?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoLFD', 'ProyectoLFD', 0, 7, 1, '', 78),
('¿Tiene proyecto de Moviles?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoMoviles', 'ProyectoMoviles', 0, 5, 1, '', 66),
('¿Tiene proyecto de PCs?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoPCs', 'ProyectoPCs', 0, 3, 1, '', 54),
('¿Tiene proyecto de Tablets?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoTablets', 'ProyectoTablets', 0, 4, 1, '', 60),
('Actividad', 'DATE', 50, 'DATE', 20, 0, 'txtActividad', 'Actividad', 1, 1, 5, '', 0),
('ACTIVIDADNEGOCIAL', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'ACTIVIDADNEGOCIAL', 0, 0, 0, '', 24),
('Actualizar Datos en BBDD', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtActualizarDatosBBDD', 'ActualizarDatosBBDD', 0, 2, 5, '', 50),
('APELLIDO1CARGO', 'MONEDA', 50, 'NUMBER', 0, 0, '', 'APELLIDO1CARGO', 0, 0, 0, '', 38),
('APELLIDO2CARGO', 'DATE', 50, 'DATE', 0, 0, '', 'APELLIDO2CARGO', 0, 0, 0, '', 39),
('BLOQUE', 'INT', 50, 'NUMBER', 0, 0, '', 'BLOQUE', 0, 0, 0, '', 11),
('Calidad BBDD', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtCalidadBBDD', 'CalidadBBDD', 0, 2, 3, '', 48),
('CALLE', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'CALLE', 0, 0, 0, '', 9),
('CC.AA.', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtCCAA', 'CCAA', 1, 1, 28, '', 0),
('CIF', 'VARCHAR', 10, 'TEXT', 10, 1, 'txtCIF', 'CIF', 1, 1, 1, '', 5),
('CODACTR2', 'VARCHAR', 50, 'NUMBER', 0, 0, '', 'CODACTR2', 0, 0, 0, '', 22),
('CODAREACARGO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'CODAREACARGO', 0, 0, 0, '', 44),
('CODCARGO', 'DATE', 50, 'DATE', 0, 0, '', 'CODCARGO', 0, 0, 0, '', 42),
('CODEMPLEADOS', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'CODEMPLEADOS', 0, 0, 0, '', 27),
('CODINGRESOS', 'INT', 50, 'NUMBER', 0, 0, '', 'CODINGRESOS', 0, 0, 0, '', 28),
('CODMERCADO', 'DATE', 50, 'DATE', 0, 0, '', 'CODMERCADO', 0, 0, 0, '', 25),
('CODPERSONA', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'CODPERSONA', 0, 0, 0, '', 36),
('COMPLEMENTO', 'MONEDA', 50, 'NUMBER', 0, 0, '', 'COMPLEMENTO', 0, 0, 0, '', 15),
('CP', 'MONEDA', 5, 'NUMBER', 5, 0, 'txtCP', 'CP', 1, 1, 24, '', 17),
('Dirección', 'INT', 50, 'NUMBER', 20, 0, 'txtDireccion', 'Direccion', 1, 1, 23, '', 16),
('ESCALERA', 'INT', 50, 'NUMBER', 0, 0, '', 'ESCALERA', 0, 0, 0, '', 14),
('Facturación', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtFacturacion', 'Facturacion', 1, 1, 6, '', 0),
('Fecha de Llamada', 'DATE', 0, 'DATE', 7, 0, 'txtFechallamada', 'Fechallamada', 0, 2, 1, '', 46),
('Fecha de Seguimiento', 'DATE', 0, 'DATE', 7, 0, 'txtFechaSeguimiento', 'FechaSeguimiento', 0, 2, 6, '', 51),
('Fecha Estimada Compra Impresion', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraImpresion', 'FechaEstimadaCompraImpresion', 0, 6, 4, '', 75),
('Fecha Estimada Compra LFD', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraLFD', 'FechaEstimadaCompraLFD', 0, 7, 4, '', 81),
('Fecha Estimada Compra Moviles', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraMoviles', 'FechaEstimadaCompraMoviles', 0, 5, 4, '', 69),
('Fecha Estimada Compra PCs', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraPCs', 'FechaEstimadaCompraPCs', 0, 3, 4, '', 57),
('Fecha Estimada Compra Tablets', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraTablets', 'FechaEstimadaCompraTablets', 0, 4, 4, '', 63),
('Grupo Empresarial', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtGrupoEmpresarial', 'GrupoEmpresarial', 1, 1, 4, '', 0),
('JUANAN', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'JUANAN', 0, 0, 0, '', 3),
('JULIO', 'INT', 50, 'NUMBER', 0, 0, '', 'JULIO', 0, 0, 0, '', 4),
('Lead', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtLead', 'Lead', 0, 2, 8, '', 53),
('LITACTR2', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'LITACTR2', 0, 0, 0, '', 23),
('LITAREACARGO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'LITAREACARGO', 0, 0, 0, '', 45),
('LITCARGO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'LITCARGO', 0, 0, 0, '', 43),
('LITMERCADO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'LITMERCADO', 0, 0, 0, '', 26),
('LITOFICINA', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'LITOFICINA', 0, 0, 0, '', 34),
('LITSEXO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'LITSEXO', 0, 0, 0, '', 21),
('Nº de Llamadas Realizadas', 'INT', 2, 'NUMBER', 5, 0, 'txtNumLlamadasRealizadas', 'NumLlamadasRealizadas', 0, 2, 2, '', 47),
('Nº de PCs Empresa', 'VARCHAR', 4, 'TEXT', 4, 0, 'txtNumPCsEmpresa', 'NumPCsEmpresa', 1, 1, 8, '', 0),
('Nº Empleados', 'VARCHAR', 4, 'TEXT', 4, 0, 'txtNumEmpleados', 'NumEmpleados', 1, 1, 7, '', 0),
('Nº Impresion', 'INT', 50, 'NUMBER', 20, 0, 'txtNumImpresion', 'NumImpresion', 0, 6, 2, '', 73),
('Nº LFD', 'INT', 50, 'NUMBER', 20, 0, 'txtNumLFD', 'NumLFD', 0, 7, 2, '', 79),
('Nº Moviles', 'INT', 50, 'NUMBER', 20, 0, 'txtNumMoviles', 'NumMoviles', 0, 5, 2, '', 67),
('Nº PCs', 'INT', 50, 'NUMBER', 20, 0, 'txtNumPCs', 'NumPCs', 0, 3, 2, '', 55),
('Nº Tablets', 'INT', 50, 'NUMBER', 20, 0, 'txtNumTablets', 'NumTablets', 0, 4, 2, '', 61),
('Nombre Comercial', 'INT', 50, 'NUMBER', 20, 0, 'txtNombreComercial', 'NombreComercial', 1, 1, 3, '', 7),
('Nombre Fiscal', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtNombreFiscal', 'NombreFiscal', 1, 1, 2, '', 6),
('NOMBRECARGO', 'DATE', 50, 'DATE', 0, 0, '', 'NOMBRECARGO', 0, 0, 0, '', 37),
('NOMBREENTERO', 'INT', 50, 'NUMBER', 0, 0, '', 'NOMBREENTERO', 0, 0, 0, '', 40),
('NUMERO', 'VARCHAR', 50, 'NUMBER', 0, 0, '', 'NUMERO', 0, 0, 0, '', 10),
('NUMSCH', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'NUMSCH', 0, 0, 0, '', 2),
('Opp Impresion €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppImpresion', 'OppImpresion', 0, 6, 3, '', 74),
('Opp LFD €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppLFD', 'OppLFD', 0, 7, 3, '', 80),
('Opp Moviles €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppMoviles', 'OppMoviles', 0, 5, 3, '', 68),
('Opp PCs €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppPCs', 'OppPCs', 0, 3, 3, '', 56),
('Opp Tablets €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppTablets', 'OppTablets', 0, 4, 3, '', 62),
('PISO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'PISO', 0, 0, 0, '', 12),
('Población', 'DATE', 50, 'DATE', 20, 0, 'txtPoblacion', 'Poblacion', 1, 1, 26, '', 19),
('POLIGONO', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'POLIGONO', 0, 0, 0, '', 19),
('Provincia', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProvincia', 'Provincia', 1, 1, 27, '', 20),
('PUERTA', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'PUERTA', 0, 0, 0, '', 13),
('Resultado de la Llamada', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtResultadoLlamada', 'ResultadoLlamada', 0, 2, 4, '', 49),
('Resumen de la Conversación', 'TEXT', 0, 'TEXT', 20, 0, 'txtResumenConversacion', 'ResumenConversacion', 0, 2, 7, '', 52),
('SEXOCARGO', 'DATE', 50, 'DATE', 0, 0, '', 'SEXOCARGO', 0, 0, 0, '', 41),
('TELEFONO1', 'TEXT', 50, 'TEXT', 0, 0, '', 'TELEFONO1', 0, 0, 0, '', 29),
('TELEFONO2', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'TELEFONO2', 0, 0, 0, '', 30),
('TELEFONO3', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'TELEFONO3', 0, 0, 0, '', 31),
('TELEFONO4', 'INT', 50, 'NUMBER', 0, 0, '', 'TELEFONO4', 0, 0, 0, '', 32),
('TELEFONO5', 'MONEDA', 50, 'NUMBER', 0, 0, '', 'TELEFONO5', 0, 0, 0, '', 33),
('TOP', 'VARCHAR', 20, 'TEXT', 0, 0, '', 'TOP', 0, 0, 0, '', 1),
('URL', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'URL', 0, 0, 0, '', 35),
('VIA', 'VARCHAR', 50, 'TEXT', 0, 0, '', 'VIA', 0, 0, 0, '', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `samsung`
--

CREATE TABLE IF NOT EXISTS `samsung` (
  `CIF` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreFiscal` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreComercial` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `GrupoEmpresarial` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Actividad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Facturacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `NumEmpleados` int(4) NOT NULL,
  `NumPCsEmpresa` int(4) NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `CP` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `Poblacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Provincia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `CCAA` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Fechallamada` date DEFAULT NULL,
  `NumLlamadasRealizadas` int(2) DEFAULT NULL,
  `CalidadBBDD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ResultadoLlamada` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ActualizarDatosBBDD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaSeguimiento` date DEFAULT NULL,
  `ResumenConversacion` varchar(0) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Lead` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumPCs` int(50) DEFAULT NULL,
  `OppPCs` int(50) DEFAULT NULL,
  `FechaEstimadaCompraPCs` date DEFAULT NULL,
  `DistribuidorPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoTablets` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumTablets` int(50) DEFAULT NULL,
  `OppTablets` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraTablets` date DEFAULT NULL,
  `DistribuidorTablets` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarTablets` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumMoviles` int(50) DEFAULT NULL,
  `OppMoviles` int(50) DEFAULT NULL,
  `FechaEstimadaCompraMoviles` varchar(0) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DistribuidorMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumImpresion` int(50) DEFAULT NULL,
  `OppImpresion` int(50) DEFAULT NULL,
  `FechaEstimadaCompraImpresion` date DEFAULT NULL,
  `DistribuidorImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumLFD` int(50) DEFAULT NULL,
  `OppLFD` int(50) DEFAULT NULL,
  `FechaEstimadaCompraLFD` date DEFAULT NULL,
  `DistribuidorLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `samsung_contactos`
--

CREATE TABLE IF NOT EXISTS `samsung_contactos` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CIFEmpresa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Cargo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `AreaCargo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `SexoCargo` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `Clave` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Permiso` int(2) NOT NULL COMMENT '0 es un usuario; 1 es un administrador',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`email`, `Nombre`, `Clave`, `Permiso`) VALUES
('insidesales@b2bss.es', 'Inside Sales', 'c893bad68927b457dbed39460e6afd62', 0),
('insidesalesla@b2bss.es', 'Inside Sales Large Accounts', 'c893bad68927b457dbed39460e6afd62', 0),
('jamartinez@mcccloudservices.es', 'Javier Martinez', '7c44a14e11f144df730106d81cdc1db0', 1),
('mar.villa@tmr-online.es', 'Mar Villa', 'c893bad68927b457dbed39460e6afd62', 1),
('mayte.cabanas@tmr-online.es', 'Mayte Cabañas', 'c893bad68927b457dbed39460e6afd62', 1),
('sara.fernandez@tmr-online.es', 'Sara Fernández', 'c893bad68927b457dbed39460e6afd62', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
