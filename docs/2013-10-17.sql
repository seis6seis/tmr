-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-10-2013 a las 04:10:14
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
('¿Con qué Marcas de Impresion Trabaja Habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtMarcarImpresion', 'MarcarImpresion', 0, 6, 6, '', 77),
('¿Con qué Marcas de LFD Trabaja Habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtMarcarLFD', 'MarcarLFD', 0, 7, 6, '', 83),
('¿Con qué Marcas de Moviles Trabaja Habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtMarcarMoviles', 'MarcarMoviles', 0, 5, 6, '', 71),
('¿Con qué Marcas de PCs Trabaja Habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtMarcarPCs', 'MarcarPCs', 0, 3, 6, '', 59),
('¿Con qué Marcas de Tablets Trabaja Habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtMarcarTablets', 'MarcarTablets', 0, 4, 6, '', 65),
('¿Qué Distribuidor/es le venden los Impresion habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtDistribuidorImpresion', 'DistribuidorImpresion', 0, 6, 5, '', 76),
('¿Qué Distribuidor/es le venden los LFD habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtDistribuidorLFD', 'DistribuidorLFD', 0, 7, 5, '', 82),
('¿Qué Distribuidor/es le venden los Moviles habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtDistribuidorMoviles', 'DistribuidorMoviles', 0, 5, 5, '', 70),
('¿Qué Distribuidor/es le venden los PCs habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtDistribuidorPCs', 'DistribuidorPCs', 0, 3, 5, '', 58),
('¿Qué Distribuidor/es le venden los Tablets habitualmente?', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtDistribuidorTablets', 'DistribuidorTablets', 0, 4, 5, '', 64),
('¿Tiene proyecto de Impresion?', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtProyectoImpresion', 'ProyectoImpresion', 0, 6, 1, '', 72),
('¿Tiene proyecto de LFD?', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtProyectoLFD', 'ProyectoLFD', 0, 7, 1, '', 78),
('¿Tiene proyecto de Moviles?', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtProyectoMoviles', 'ProyectoMoviles', 0, 5, 1, '', 66),
('¿Tiene proyecto de PCs?', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtProyectoPCs', 'ProyectoPCs', 0, 3, 1, '', 54),
('¿Tiene proyecto de Tablets?', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtProyectoTablets', 'ProyectoTablets', 0, 4, 1, '', 60),
('Actividad', 'VARCHAR', 100, 'TEXT', 5, 0, 'txtActividad', 'Actividad', 1, 1, 5, '', 0),
('ACTIVIDADNEGOCIAL', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'ACTIVIDADNEGOCIAL', 0, 0, 0, '', 24),
('Actualizar Datos en BBDD', 'VARCHAR', 255, 'TEXT', 5, 0, 'txtActualizarDatosBBDD', 'ActualizarDatosBBDD', 0, 2, 5, '', 50),
('APELLIDO1CARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'APELLIDO1CARGO', 0, 0, 0, '', 38),
('APELLIDO2CARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'APELLIDO2CARGO', 0, 0, 0, '', 39),
('BLOQUE', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'BLOQUE', 0, 0, 0, '', 11),
('Calidad BBDD', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtCalidadBBDD', 'CalidadBBDD', 0, 2, 3, '', 48),
('CALLE', 'VARCHAR', 255, 'TEXT', 5, 0, '', 'CALLE', 0, 0, 0, '', 9),
('CC.AA.', 'VARCHAR', 80, 'TEXT', 5, 0, 'txtCCAA', 'CCAA', 1, 1, 28, '', 0),
('CIF', 'VARCHAR', 10, 'TEXT', 5, 1, 'txtCIF', 'CIF', 1, 1, 1, '', 5),
('CODACTR2', 'VARCHAR', 50, 'NUMBER', 5, 0, '', 'CODACTR2', 0, 0, 0, '', 22),
('CODAREACARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODAREACARGO', 0, 0, 0, '', 44),
('CODCARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODCARGO', 0, 0, 0, '', 42),
('CODEMPLEADOS', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODEMPLEADOS', 0, 0, 0, '', 27),
('CODINGRESOS', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODINGRESOS', 0, 0, 0, '', 28),
('CODMERCADO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODMERCADO', 0, 0, 0, '', 25),
('CODPERSONA', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODPERSONA', 0, 0, 0, '', 36),
('COMPLEMENTO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'COMPLEMENTO', 0, 0, 0, '', 15),
('CP', 'VARCHAR', 5, 'TEXT', 5, 0, 'txtCP', 'CP', 1, 1, 24, '', 17),
('Dirección', 'VARCHAR', 150, 'TEXT', 5, 0, 'txtDireccion', 'Direccion', 1, 1, 23, '', 16),
('ESCALERA', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'ESCALERA', 0, 0, 0, '', 14),
('Facturación', 'VARCHAR', 50, 'TEXT', 5, 0, 'txtFacturacion', 'Facturacion', 1, 1, 6, '', 0),
('Fecha de Llamada', 'DATE', 0, 'DATE', 5, 0, 'txtFechallamada', 'Fechallamada', 0, 2, 1, '', 46),
('Fecha de Seguimiento', 'DATE', 0, 'DATE', 5, 0, 'txtFechaSeguimiento', 'FechaSeguimiento', 0, 2, 6, '', 51),
('Fecha Estimada Compra Impresion', 'DATE', 0, 'DATE', 5, 0, 'txtFechaEstimadaCompraImpresion', 'FechaEstimadaCompraImpresion', 0, 6, 4, '', 75),
('Fecha Estimada Compra LFD', 'DATE', 0, 'DATE', 5, 0, 'txtFechaEstimadaCompraLFD', 'FechaEstimadaCompraLFD', 0, 7, 4, '', 81),
('Fecha Estimada Compra Moviles', 'DATE', 0, 'DATE', 5, 0, 'txtFechaEstimadaCompraMoviles', 'FechaEstimadaCompraMoviles', 0, 5, 4, '', 69),
('Fecha Estimada Compra PCs', 'DATE', 0, 'DATE', 5, 0, 'txtFechaEstimadaCompraPCs', 'FechaEstimadaCompraPCs', 0, 3, 4, '', 57),
('Fecha Estimada Compra Tablets', 'DATE', 0, 'DATE', 5, 0, 'txtFechaEstimadaCompraTablets', 'FechaEstimadaCompraTablets', 0, 4, 4, '', 63),
('Grupo Empresarial', 'VARCHAR', 50, 'TEXT', 5, 0, 'txtGrupoEmpresarial', 'GrupoEmpresarial', 1, 1, 4, '', 0),
('JUANAN', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'JUANAN', 0, 0, 0, '', 3),
('JULIO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'JULIO', 0, 0, 0, '', 4),
('Lead', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtLead', 'Lead', 0, 2, 8, '', 53),
('LITACTR2', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITACTR2', 0, 0, 0, '', 23),
('LITAREACARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITAREACARGO', 0, 0, 0, '', 45),
('LITCARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITCARGO', 0, 0, 0, '', 43),
('LITMERCADO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITMERCADO', 0, 0, 0, '', 26),
('LITOFICINA', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITOFICINA', 0, 0, 0, '', 34),
('LITSEXO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITSEXO', 0, 0, 0, '', 21),
('Nº de Llamadas Realizadas', 'INT', 2, 'SELECT', 5, 0, 'txtNumLlamadasRealizadas', 'NumLlamadasRealizadas', 0, 2, 2, '', 47),
('Nº de PCs Empresa', 'INT', 4, 'NUMBER', 5, 0, 'txtNumPCsEmpresa', 'NumPCsEmpresa', 1, 1, 8, '', 0),
('Nº Empleados', 'INT', 4, 'NUMBER', 5, 0, 'txtNumEmpleados', 'NumEmpleados', 1, 1, 7, '', 0),
('Nº Impresion', 'INT', 50, 'NUMBER', 5, 0, 'txtNumImpresion', 'NumImpresion', 0, 6, 2, '', 73),
('Nº LFD', 'INT', 50, 'NUMBER', 5, 0, 'txtNumLFD', 'NumLFD', 0, 7, 2, '', 79),
('Nº Moviles', 'INT', 50, 'NUMBER', 5, 0, 'txtNumMoviles', 'NumMoviles', 0, 5, 2, '', 67),
('Nº PCs', 'INT', 50, 'NUMBER', 5, 0, 'txtNumPCs', 'NumPCs', 0, 3, 2, '', 55),
('Nº Tablets', 'INT', 50, 'TEXT', 5, 0, 'txtNumTablets', 'NumTablets', 0, 4, 2, '', 61),
('Nombre Comercial', 'VARCHAR', 150, 'TEXT', 5, 0, 'txtNombreComercial', 'NombreComercial', 1, 1, 3, '', 7),
('Nombre Fiscal', 'VARCHAR', 150, 'TEXT', 5, 0, 'txtNombreFiscal', 'NombreFiscal', 1, 1, 2, '', 6),
('NOMBRECARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'NOMBRECARGO', 0, 0, 0, '', 37),
('NOMBREENTERO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'NOMBREENTERO', 0, 0, 0, '', 40),
('NUMERO', 'VARCHAR', 50, 'NUMBER', 5, 0, '', 'NUMERO', 0, 0, 0, '', 10),
('NUMSCH', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'NUMSCH', 0, 0, 0, '', 2),
('Opp Impresion €', 'VARCHAR', 50, 'MONEDA', 5, 0, 'txtOppImpresion', 'OppImpresion', 0, 6, 3, '', 74),
('Opp LFD €', 'VARCHAR', 50, 'MONEDA', 5, 0, 'txtOppLFD', 'OppLFD', 0, 7, 3, '', 80),
('Opp Moviles €', 'VARCHAR', 50, 'MONEDA', 5, 0, 'txtOppMoviles', 'OppMoviles', 0, 5, 3, '', 68),
('Opp PCs €', 'VARCHAR', 50, 'MONEDA', 5, 0, 'txtOppPCs', 'OppPCs', 0, 3, 3, '', 56),
('Opp Tablets €', 'VARCHAR', 50, 'TEXT', 5, 0, 'txtOppTablets', 'OppTablets', 0, 4, 3, '', 62),
('PISO', 'VARCHAR', 255, 'TEXT', 5, 0, '', 'PISO', 0, 0, 0, '', 12),
('Población', 'VARCHAR', 50, 'TEXT', 5, 0, 'txtPoblacion', 'Poblacion', 1, 1, 26, '', 19),
('Polígono', 'VARCHAR', 255, 'TEXT', 5, 0, '', 'POLIGONO', 0, 1, 25, '', 18),
('Provincia', 'VARCHAR', 100, 'TEXT', 5, 0, 'txtProvincia', 'Provincia', 1, 1, 27, '', 20),
('PUERTA', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'PUERTA', 0, 0, 0, '', 13),
('Resultado de la Llamada', 'VARCHAR', 50, 'SELECT', 5, 0, 'txtResultadoLlamada', 'ResultadoLlamada', 0, 2, 4, '', 49),
('Resumen de la Conversación', 'TEXT', 0, 'TEXTAREA', 300, 0, 'txtResumenConversacion', 'ResumenConversacion', 0, 2, 7, '', 52),
('SEXOCARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'SEXOCARGO', 0, 0, 0, '', 41),
('TELEFONO1', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO1', 0, 0, 0, '', 29),
('TELEFONO2', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO2', 0, 0, 0, '', 30),
('TELEFONO3', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO3', 0, 0, 0, '', 31),
('TELEFONO4', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO4', 0, 0, 0, '', 32),
('TELEFONO5', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO5', 0, 0, 0, '', 33),
('TOP', 'VARCHAR', 20, 'TEXT', 5, 0, '', 'TOP', 0, 0, 0, '', 1),
('URL', 'VARCHAR', 255, 'TEXT', 5, 0, '', 'URL', 0, 0, 0, '', 35),
('VIA', 'VARCHAR', 255, 'TEXT', 5, 0, '', 'VIA', 0, 0, 0, '', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `samsung`
--

CREATE TABLE IF NOT EXISTS `samsung` (
  `TOP` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VIA` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PISO` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CALLE` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `JULIO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `BLOQUE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `JUANAN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMERO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMSCH` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PUERTA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITSEXO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODACTR2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODCARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESCALERA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITACTR2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITCARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `POLIGONO` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SEXOCARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO1` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO3` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO4` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO5` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODMERCADO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODPERSONA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITMERCADO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITOFICINA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODINGRESOS` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `COMPLEMENTO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRECARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODAREACARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODEMPLEADOS` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITAREACARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREENTERO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO1CARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO2CARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ACTIVIDADNEGOCIAL` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CIF` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreFiscal` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreComercial` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `GrupoEmpresarial` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Actividad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `Facturacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `NumEmpleados` int(4) NOT NULL,
  `NumPCsEmpresa` int(4) NOT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `CP` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `Poblacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Provincia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `CCAA` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
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
  `OppPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
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
  `OppMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraMoviles` date DEFAULT NULL,
  `DistribuidorMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumImpresion` int(50) DEFAULT NULL,
  `OppImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraImpresion` date DEFAULT NULL,
  `DistribuidorImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumLFD` int(50) DEFAULT NULL,
  `OppLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraLFD` date DEFAULT NULL,
  `DistribuidorLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UsuarioAcceso` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
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
  `Movil` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `SexoCargo` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `samsung_select`
--

CREATE TABLE IF NOT EXISTS `samsung_select` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NamePrincipal` varchar(255) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre que tiene el select de html',
  `Nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre que mostrara el desplegable',
  `Value` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'Valor',
  `Orden` int(11) DEFAULT NULL COMMENT 'Orden en la lista',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `samsung_select`
--

INSERT INTO `samsung_select` (`ID`, `NamePrincipal`, `Nombre`, `Value`, `Orden`) VALUES
(1, 'txtResultadoLlamada', 'C.U. No interesado', 'CUNoInteresado', 1),
(2, 'txtResultadoLlamada', 'C.U. Visita NO', 'CUVisitaNo', 2),
(3, 'txtResultadoLlamada', 'C.U. Visita SI', 'CUVisitaSi', 3),
(4, 'txtResultadoLlamada', 'C.U. Volver a llamar', 'CUVolverLlamar', 4),
(5, 'txtResultadoLlamada', 'Cerrado no interesado', 'CerradoNoInteresado', 5),
(6, 'txtResultadoLlamada', 'Cerrado por 10 llamadas', 'Cerrado10Llamadas', 6),
(7, 'txtResultadoLlamada', 'Volver a Llamar', 'VolverLlamar', 7),
(8, 'txtCalidadBBDD', 'Telf Erróneo', 'TelfErroneo', 1),
(9, 'txtCalidadBBDD', 'Contacto Erróneo', 'ContactoErroneo', 2),
(10, 'txtCalidadBBDD', 'Telf+Contacto Erróneo', 'TelfYcontactoErroneo', 3),
(11, 'txtProyectoPCs', 'Sí', 'Sí', 1),
(12, 'txtProyectoPCs', 'No', 'No', 2),
(13, 'txtProyectoPCs', 'En previsión', 'En previsión', 3),
(14, 'txtLead', 'Sí', 'Sí', 1),
(15, 'txtLead', 'No', 'No', 2),
(16, 'txtProyectoTablets', 'Sí', 'Sí', 1),
(17, 'txtProyectoTablets', 'No', 'No', 2),
(18, 'txtProyectoTablets', 'En previsión', 'En previsión', 3),
(19, 'txtProyectoMoviles', 'Sí', 'Sí', 1),
(20, 'txtProyectoMoviles', 'No', 'No', 2),
(21, 'txtProyectoMoviles', 'En previsión', 'En previsión', 3),
(22, 'txtProyectoImpresion', 'Sí', 'Sí', 1),
(23, 'txtProyectoImpresion', 'No', 'No', 2),
(24, 'txtProyectoImpresion', 'En previsión', 'En previsión', 3),
(25, 'txtProyectoLFD', 'Sí', 'Sí', 1),
(26, 'txtProyectoLFD', 'No', 'No', 2),
(27, 'txtProyectoLFD', 'En previsión', 'En previsión', 3),
(28, 'txtNumLlamadasRealizadas', '1', '1', 1),
(29, 'txtNumLlamadasRealizadas', '2', '2', 2),
(30, 'txtNumLlamadasRealizadas', '3', '3', 3),
(31, 'txtNumLlamadasRealizadas', '4', '4', 4),
(32, 'txtNumLlamadasRealizadas', '5', '5', 5),
(33, 'txtNumLlamadasRealizadas', '6', '6', 6),
(34, 'txtNumLlamadasRealizadas', '7', '7', 7),
(35, 'txtNumLlamadasRealizadas', '8', '8', 8),
(36, 'txtNumLlamadasRealizadas', '9', '9', 9),
(37, 'txtNumLlamadasRealizadas', '10', '10', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE IF NOT EXISTS `tmp` (
  `TOP` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VIA` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PISO` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CALLE` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `JULIO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `BLOQUE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `JUANAN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMERO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMSCH` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PUERTA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITSEXO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODACTR2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODCARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESCALERA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITACTR2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITCARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `POLIGONO` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SEXOCARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO1` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO3` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO4` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO5` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODMERCADO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODPERSONA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITMERCADO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITOFICINA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODINGRESOS` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `COMPLEMENTO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRECARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODAREACARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODEMPLEADOS` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LITAREACARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREENTERO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO1CARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO2CARGO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ACTIVIDADNEGOCIAL` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CIF` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreFiscal` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreComercial` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `GrupoEmpresarial` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Actividad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `Facturacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `NumEmpleados` int(4) NOT NULL,
  `NumPCsEmpresa` int(4) NOT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `CP` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `Poblacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Provincia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `CCAA` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
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
  `OppPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
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
  `OppMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraMoviles` date DEFAULT NULL,
  `DistribuidorMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumImpresion` int(50) DEFAULT NULL,
  `OppImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraImpresion` date DEFAULT NULL,
  `DistribuidorImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumLFD` int(50) DEFAULT NULL,
  `OppLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraLFD` date DEFAULT NULL,
  `DistribuidorLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UsuarioAcceso` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`TOP`, `URL`, `VIA`, `PISO`, `CALLE`, `JULIO`, `BLOQUE`, `JUANAN`, `NUMERO`, `NUMSCH`, `PUERTA`, `LITSEXO`, `CODACTR2`, `CODCARGO`, `ESCALERA`, `LITACTR2`, `LITCARGO`, `POLIGONO`, `SEXOCARGO`, `TELEFONO1`, `TELEFONO2`, `TELEFONO3`, `TELEFONO4`, `TELEFONO5`, `CODMERCADO`, `CODPERSONA`, `LITMERCADO`, `LITOFICINA`, `CODINGRESOS`, `COMPLEMENTO`, `NOMBRECARGO`, `CODAREACARGO`, `CODEMPLEADOS`, `LITAREACARGO`, `NOMBREENTERO`, `APELLIDO1CARGO`, `APELLIDO2CARGO`, `ACTIVIDADNEGOCIAL`, `CIF`, `NombreFiscal`, `NombreComercial`, `GrupoEmpresarial`, `Actividad`, `Facturacion`, `NumEmpleados`, `NumPCsEmpresa`, `Direccion`, `CP`, `Poblacion`, `Provincia`, `CCAA`, `Fechallamada`, `NumLlamadasRealizadas`, `CalidadBBDD`, `ResultadoLlamada`, `ActualizarDatosBBDD`, `FechaSeguimiento`, `ResumenConversacion`, `Lead`, `ProyectoPCs`, `NumPCs`, `OppPCs`, `FechaEstimadaCompraPCs`, `DistribuidorPCs`, `MarcarPCs`, `ProyectoTablets`, `NumTablets`, `OppTablets`, `FechaEstimadaCompraTablets`, `DistribuidorTablets`, `MarcarTablets`, `ProyectoMoviles`, `NumMoviles`, `OppMoviles`, `FechaEstimadaCompraMoviles`, `DistribuidorMoviles`, `MarcarMoviles`, `ProyectoImpresion`, `NumImpresion`, `OppImpresion`, `FechaEstimadaCompraImpresion`, `DistribuidorImpresion`, `MarcarImpresion`, `ProyectoLFD`, `NumLFD`, `OppLFD`, `FechaEstimadaCompraLFD`, `DistribuidorLFD`, `MarcarLFD`, `UsuarioAcceso`) VALUES
('', 'WWW.CITADESVA.COM', 'LUGAR', '', 'FINCA DEHESILLA', '', '', '', '0 S-N', '003440906', '', 'EMPRESA', '2512', '020', '', 'FRUTAS VERDURAS Y FRUTAS EXOTICAS MAY', 'DIRECTOR DE RECURSOS HUMANOS', '', 'HOMBRE', '959385236', '959394323', '', '', '', '46', '110346', 'ALIMENTACION Y BEBIDAS', 'SEDES CENTRAL', '56573966,32', '', 'ANTONIO', '8', '113', 'RECURSOS HUMANOS', 'ANTONIO INFANTE', 'INFANTE', '', '', 'A21362389', 'CITRICOS DEL ANDEVALO SA.', '', '', '', '', 0, 0, 'LUGAR FINCA DEHESILLA S-N', '21540', 'VILLANUEVA DE LOS CASTILLEJOS', 'HUELVA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.GROUPESEB.COM', 'CARRER', '5º', 'ALMOGAVERS', '', '', '', '107', '001007285', '', 'EMPRESA', '0761', '020', '', 'ELECTRODOMESTICOS FAB', 'DIRECTOR DE RECURSOS HUMANOS', '', 'MUJER', '932922122', '', '', '', '', '34', '14986', 'ELECTRICIDAD Y ELECTRONICA', 'EMPRESA UNICA', '51086029', 'EDIF ECOURBAN', 'MARINA', '8', '82', 'RECURSOS HUMANOS', 'MARINA TARRADELLAS', 'TARRADELLAS', '', '', 'A58153990', 'TEFAL ESPAÑA S.A.', '', '', '', '', 0, 0, 'CARRER ALMOGAVERS, 107 5º EDIF ECOURBAN', '08018', 'BARCELONA', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('Lola', 'WWW.ABB.COM', 'CARRER', 'B', 'NARCIS MONTURIOL I ESTARRIOL', 'Named', '', '', '17', '001241199', '', 'EMPRESA', '2310', '015', '', 'MAQUINARIA EQUIPOS Y APARATOS MAY COM', 'DIRECTOR DE INFORMATICA', 'PARQUE TECNOLÓGICO DE PATERNA', 'HOMBRE', '963604180', '963604247', '963617651', '', '', '42', '18479', 'MAQUINARIA, EQUIPO Y APARATOS', 'EMPRESA UNICA', '86677665', 'PQUE TECNOLOGICO EDIF AS CENTER 3 AZUL', 'JAVIER', '7', '380', 'INFORMATICA', 'JAVIER SANCHEZ', 'SANCHEZ', '', '', 'A58399767', 'ABB METRON S.A.', '', '', '', '', 0, 0, 'CARRER NARCIS MONTURIOL I ESTARRIOL, 17 B PQUE TECNOLOGICO EDIF AS CENTER 3 AZUL', '46980', 'PATERNA', 'VALENCIA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.SERVIHABITAT.COM', 'CARRER', '', 'PROVENÇALS', '', '', '', '39', '003659521', '', 'EMPRESA', '2197', '', '', 'AGENTES INMOBILIARIOS', '', '', '', '934133200', '932933030', '932112074', '', '', '15', '', 'EMPRESAS DE SERVICIOS', 'SEDES CENTRAL', '753057000', '', '', '', '231', '', '', '', '', '', 'A63379135', 'SERVIHABITAT XXI SA', '', '', '', '', 0, 0, 'CARRER PROVENÇALS, 39', '08019', 'BARCELONA', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.GMODELO.COM', 'POLIGONO', '', 'INDUSTRIAL MIRALCAMPO', '', '', '', '12', '001699123', '', 'EMPRESA', '0381', '020', '', 'CERVEZA MAY', 'DIRECTOR DE RECURSOS HUMANOS', 'POLÍGONO INDUSTRIAL MIRALCAMPO', 'HOMBRE', '949264426', '949264424', '949264922', '949265231', '918751124', '46', '35468', 'ALIMENTACION Y BEBIDAS', 'SEDES CENTRAL', '155430546', '', 'ANDRES', '8', '81', 'RECURSOS HUMANOS', 'ANDRES GARCIA', 'GARCIA', '', '', 'A80684111', 'GMODELO EUROPA SA', '', '', '', '', 0, 0, 'POLIGONO INDUSTRIAL MIRALCAMPO, 12', '19200', 'AZUQUECA DE HENARES', 'GUADALAJARA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.CEPSA.COM', 'AVENIDA', '', 'PARTENON', '', '', '', '12', '001723766', '', 'EMPRESA', '0768', '136', '', 'PRODUCCION DE ENERGIA ELECTRICA', 'JEFE DE COMPRAS', '', 'HOMBRE', '913379518', '913376000', '', '', '', '16', '38485', 'ENERGIA Y AGUA', 'SEDES CENTRAL', '223358061', '', 'JAVIER', '6', '1', 'COMPRAS', 'JAVIER MARTINEZ', 'MARTINEZ', '', '', 'A83491019', 'GENERACION ELECTRICA PENINSULAR S.A.', '', '', '', '', 0, 0, 'AVENIDA PARTENON, 12', '28042', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.REFRESCOHOLDING.COM', 'CARRETERA', '', 'N - 332', '', '', '', '0', '003614559', '', 'EMPRESA', '1168', '013', '', 'ZUMOS DE FRUTA FAB', 'DIRECTOR DE COMPRAS', '', 'HOMBRE', '962850200', '962838425', '962963645', '', '', '46', '115572', 'ALIMENTACION Y BEBIDAS', 'SEDES CENTRAL', '231976000', 'KM 206.900', 'VICTOR', '6', '326', 'COMPRAS', 'VICTOR MORCUENDE', 'MORCUENDE', '', '', 'A83745695', 'REFRESCO IBERIA SA', '', '', '', '', 0, 0, 'CARRETERA N - 332 KM 206.900', '46780', 'OLIVA', 'VALENCIA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('Lola', 'WWW.NAVANTIA.ES', 'CALLE', '', 'VELAZQUEZ', '', '', 'Named', '132', '004108064', '', 'EMPRESA', '2884', '015', '', 'BARCOS Y BUQUES FAB', 'DIRECTOR DE INFORMATICA', '', 'HOMBRE', '913358553', '913358400', '915646140', '915644944', '917455771', '35', '133594', 'VEHICULOS, RECAMBIOS Y ACCESORIOS', 'SEDES CENTRAL', '1249675000', '', 'PEDRO ANTONIO', '7', '5521', 'INFORMATICA', 'PEDRO ANTONIO MARTINEZ', 'MARTINEZ', '', '', 'A84076397', 'NAVANTIA SA', '', '', '', '', 0, 0, 'VELAZQUEZ, 132', '28006', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', '', 'CARRER', '3º', 'JOSEP ROVER MOTTA', '', '', '', '27', '001821891', '', 'EMPRESA', '0656', '020', '', 'TURISMO SERVICIOS', 'DIRECTOR DE RECURSOS HUMANOS', 'POLÍGONO INDUSTRIAL SON CASTELLÓ', 'MUJER', '971771700', '', '', '', '', '15', '42554', 'EMPRESAS DE SERVICIOS', 'EMPRESA UNICA', '132696592', '', 'MARIA CARMEN', '8', '0', 'RECURSOS HUMANOS', 'MARIA CARMEN OLIVER', 'OLIVER', '', '', 'B07067564', 'AUXILIAIR S.L.', '', '', '', '', 0, 0, 'CARRER JOSEP ROVER MOTTA, 27 3º', '07006', 'PALMA', 'BALEARES', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.SIXT.COM', 'VIAL', '', 'SAN JOSE', '', '', '', '0 S-N', '001859180', '', 'EMPRESA', '0211', '', '', 'AUTOMOVILES ALQUILER', '', 'POLÍGONO INDUSTRIAL SON CASTELLÓ', '', '971126844', '971126970', '971126998', '902491616', '971260268', '15', '', 'EMPRESAS DE SERVICIOS', 'SEDES CENTRAL', '57425316', 'VIAL 1 SOLAR 3 Y 4 LO 2', '', '', '235', '', '', '', '', '', 'B07947591', 'SIXT RENT A CAR SL', '', '', '', '', 0, 0, 'VIAL SAN JOSE S-N VIAL 1 SOLAR 3 Y 4 LO 2', '07009', 'PALMA', 'BALEARES', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.LAUKI.COM', 'AVENIDA', '', 'SANTANDER', '', '', '', '2', '003782240', '', 'EMPRESA', '2390', '020', '', 'LECHE Y DERIVADOS DE LECHE FAB', 'DIRECTOR DE RECURSOS HUMANOS', '', 'HOMBRE', '983250450', '983320384', '983266522', '915079697', '', '46', '123151', 'ALIMENTACION Y BEBIDAS', 'EMPRESA UNICA', '74491712,88', 'NAVE', 'TOMAS', '8', '92', 'RECURSOS HUMANOS', 'TOMAS BARRIGA', 'BARRIGA', '', '', 'B27313899', 'INDUSTRIAS LACTEAS VALLISOLETANAS SL', '', '', '', '', 0, 0, 'AVENIDA SANTANDER, 2 NAVE', '47010', 'VALLADOLID', 'VALLADOLID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.CARGILL.COM', 'CARRER', '', 'MARIA CURIE', '', '', '', '6', '002897502', '', 'EMPRESA', '2151', '', '', 'AGRICULTURA', '', 'POLÍGONO INDUSTRIAL LA TORRE', '', '937733800', '937741441', '937742722', '937743649', '937755950', '56', '', 'AGRICULTURA Y PESCA', 'SEDES CENTRAL', '1174427000', '', '', '', '707', '', '', '', '', '', 'B62583471', 'CARGILL SL', '', '', '', '', 0, 0, 'CARRER MARIA CURIE, 6', '08760', 'MARTORELL', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.NTINCOMING.COM', 'AUTOVIA', 'BJ', 'A - 2', '', '', '', '0', '002918530', '', 'EMPRESA', '1919', '020', '', 'VIAJES AGENCIAS', 'DIRECTOR DE RECURSOS HUMANOS', '', 'MUJER', '937677930', '963767793', '', '', '', '21', '87606', 'TRANSPORTES Y TRAFICO', 'EMPRESA UNICA', '157497092,84', 'KM 672.500', 'CRISTINA', '8', '174', 'RECURSOS HUMANOS', 'CRISTINA SAULEDA', 'SAULEDA', '', '', 'B62880992', 'N T INCOMING SL', '', '', '', '', 0, 0, 'AUTOVIA A - 2 BJ KM 672.500', '08398', 'CASC URBA - SANTA SUSANNA', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.DHUL.ES', 'AVENIDA', '', 'ANDALUCIA', '', '', '', '0', '003074622', '', 'EMPRESA', '2390', '015', '', 'LECHE Y DERIVADOS DE LECHE FAB', 'DIRECTOR DE INFORMATICA', '', 'HOMBRE', '958274050', '958277071', '', '', '', '46', '95322', 'ALIMENTACION Y BEBIDAS', 'SEDES CENTRAL', '69184763,72', 'NAVE', 'JOSE', '7', '210', 'INFORMATICA', 'JOSE PUENTE', 'PUENTE', '', '', 'B81576985', 'GRUPO DHUL S.L.', '', '', '', '', 0, 0, 'AVENIDA ANDALUCIA NAVE', '18015', 'GRANADA', 'GRANADA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.GRUPOPINAR.COM', 'CAMINO', '', 'ZARZUELA', '', '', '', '15', '003120508', '', 'EMPRESA', '1575', '016', '', 'INMOBILIARIAS AGENCIAS Y AGENTES', 'DIRECTOR DE MARKETING', '', 'MUJER', '914576070', '916253000', '914335972', '914337770', '915510930', '15', '97544', 'EMPRESAS DE SERVICIOS', 'SEDES CENTRAL', '203515724', '', 'RAQUEL', '5', '37', 'MARKETING', 'RAQUEL BRAVO', 'BRAVO', '', '', 'B82219999', 'GRUPO EMPRESARIAL PINAR SL', '', '', '', '', 0, 0, 'CAMINO ZARZUELA, 15', '28023', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.GRUPODAE.COM', 'PASEO', '', 'CASTELLANA', '', '', '', '123', '003131802', '', 'EMPRESA', '1575', '020', '', 'INMOBILIARIAS AGENCIAS Y AGENTES', 'DIRECTOR DE RECURSOS HUMANOS', '', 'HOMBRE', '913915002', '', '', '', '', '15', '98143', 'EMPRESAS DE SERVICIOS', 'EMPRESA UNICA', '81676320,83', '', 'DAVID', '8', '0', 'RECURSOS HUMANOS', 'DAVID LAMOTE', 'LAMOTE', '', '', 'B82354713', 'PIK POBEDY PROMOCIONES S.L.', '', '', '', '', 0, 0, 'PASEO CASTELLANA, 123', '28046', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('Lola', 'WWW.SEUR.ES', 'CARRETERA', '', 'VILLAVERDE A VALLECAS', '', '', 'Named', '257', '003753381', '', 'EMPRESA', '3350', '020', '', 'TRANSPORTES URBANOS DE MERCANCIAS', 'DIRECTOR DE RECURSOS HUMANOS', '', 'HOMBRE', '913228080', '913320802', '913323649', '913228000', '916561944', '21', '122232', 'TRANSPORTES Y TRAFICO', 'SEDES CENTRAL', '192072009,42', '', 'ANTONIO', '8', '986', 'RECURSOS HUMANOS', 'ANTONIO MARTINEZ GARCIA', 'MARTINEZ', 'GARCIA', '', 'B82516600', 'SEUR GEOPOST SL', '', '', '', '', 0, 0, 'CARRETERA VILLAVERDE A VALLECAS, 257', '28031', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.BOMBARDIER.COM', 'LEKU', '', 'BARRIO TRAPAGA', '', '', '', '0 S-N', '003180189', '', 'EMPRESA', '2874', '020', '', 'VEHICULOS FERROVIARIOS FAB', 'DIRECTOR DE RECURSOS HUMANOS', 'POLÍGONO INDUSTRIAL TRÁPAGA UGARTE', 'HOMBRE', '944869100', '944869128', '', '', '', '35', '100605', 'VEHICULOS, RECAMBIOS Y ACCESORIOS', 'SEDES CENTRAL', '180197000', '', 'IÑAQUI', '8', '381', 'RECURSOS HUMANOS', 'IÑAQUI ROJO MARTIN', 'ROJO', 'MARTIN', '', 'B82894049', 'BOMBARDIER EUROPEAN HOLDINGS S.L.', '', '', '', '', 0, 0, 'BARRIO TRAPAGA LEKU S-N', '48510', 'VALLE DE TRAPAGA - TRAPAGARAN', 'VIZCAYA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', '', 'CAMINO', '', 'HORMIGUERAS', '', '', '', '171', '003604584', '', 'EMPRESA', '1049', '013', '', 'ASESORES FINANCIEROS Y DE INVERSIONES', 'DIRECTOR DE COMPRAS', 'POLÍGONO INDUSTRIAL DE VALLECAS', 'HOMBRE', '916424580', '913057019', '913058044', '913058499', '914561005', '27', '115121', 'ASESORIA JURIDICA, ECONOMICA Y NOTARIAS', 'SEDES CENTRAL', '78062454', '', 'RUBEN', '6', '300', 'COMPRAS', 'RUBEN TORRADO', 'TORRADO', '', '', 'B83667725', 'SERTEGO SERVICIOS MEDIOAMBIENTALES SL', '', '', '', '', 0, 0, 'CAMINO HORMIGUERAS, 171', '28031', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', '', 'PLAZA', '', 'CARLOS TRIAS BERTRAN', '', '', '', '7', '003247301', '', 'EMPRESA', '3287', '136', '', 'OBRAS PUBLICAS', 'JEFE DE COMPRAS', '', 'HOMBRE', '914170800', '915455000', '', '', '', '5', '104070', 'CONSTRUCCION Y OBRAS PUBLICAS', 'EMPRESA UNICA', '78590026,18', '', 'MANUEL', '6', '0', 'COMPRAS', 'MANUEL CESPEDOSA', 'CESPEDOSA', '', '', 'B83681247', 'ENAITINERE SL.', '', '', '', '', 0, 0, 'PLAZA CARLOS TRIAS BERTRAN, 7', '28020', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.TERRATEST.ES', 'CALLE', '', 'MIGUEL YUSTE', '', '', '', '45', '003710381', '', 'EMPRESA', '3908', '015', '', 'OBRAS Y SERVICIOS', 'DIRECTOR DE INFORMATICA', 'POLÍGONO INDUSTRIAL JULIÁN CAMARILLO', 'HOMBRE', '914237511', '914237500', '', '', '', '14', '120017', 'DISEÑO Y SERVICIOS DE CONSTRUCCION', 'SEDES CENTRAL', '50792963', '', 'ALEJANDRO', '7', '153', 'INFORMATICA', 'ALEJANDRO SIERRA', 'SIERRA', '', '', 'B83901041', 'TERRATEST CIMENTACIONES SL.', '', '', '', '', 0, 0, 'MIGUEL YUSTE, 45', '28037', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.TELERECARGA.ES', 'CALLE', '', 'CANTABRIA', '', '', '', '2', '004133849', '', 'EMPRESA', '0006', '015', '', 'MERCADO DE LAS TELECOMUNICACIONES', 'DIRECTOR DE INFORMATICA', 'PARQUE EMPRESARIAL ARROYO DE LA VEGA', 'HOMBRE', '914891937', '913342171', '916588957', '916591151', '914840961', '65', '134965', 'TELECOMUNICACIONES', 'SEDES CENTRAL', '275575983', '', 'JAVIER', '7', '34', 'INFORMATICA', 'JAVIER MARTINEZ', 'MARTINEZ', '', '', 'B84134246', 'EURONET TELERECARGA SL', '', '', '', '', 0, 0, 'CANTABRIA, 2', '28108', 'ALCOBENDAS', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.HUAWEI.COM', 'CALLE', '', 'FEDERICO MOMPOU', '', '', '', '5', '004134813', '', 'EMPRESA', '4383', '020', '', 'SERVICIOS TELEMATICOS', 'DIRECTOR DE RECURSOS HUMANOS', 'PARQUE EMPRESARIAL CERRO DE LAS CUEVAS', 'MUJER', '913843888', '913841020', '915970870', '913446251', '917188909', '65', '135036', 'TELECOMUNICACIONES', 'SEDES CENTRAL', '312000000', '', 'NATALIA', '8', '741', 'RECURSOS HUMANOS', 'NATALIA WISTER', 'WISTER', '', '', 'B84136464', 'HUAWEI TECHNOLOGIES ESPAÑA S.L.', '', '', '', '', 0, 0, 'FEDERICO MOMPOU, 5', '28050', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es'),
('', 'WWW.INDRA.ES', 'AVENIDA', '', 'BRUSELAS', '', '', '', '35', '004135661', '', 'EMPRESA', '1424', '016', '', 'INFORMATICA EMPRESAS DE SERVICIOS', 'DIRECTOR DE MARKETING', 'POLÍGONO INDUSTRIAL ALCOBENDAS', 'MUJER', '915948700', '918049159', '918047549', '913858221', '913605880', '66', '135101', 'INFORMATICA', 'SEDES CENTRAL', '95635000', '', 'EMMA', '5', '325', 'MARKETING', 'EMMA FERNANDEZ ALONSO', 'FERNANDEZ', 'ALONSO', '', 'B84138296', 'INDRA BMB SL', '', '', '', '', 0, 0, 'AVENIDA BRUSELAS, 35', '28108', 'ALCOBENDAS', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'jamartinez@mcccloudservices.es');

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
('insidesalesE@b2bss.es', 'Inside Sales Ocio y Entretenimoiento', 'c893bad68927b457dbed39460e6afd62', 0),
('insidesalesH@b2bss.es', 'Inside Sale Healthcare', 'c893bad68927b457dbed39460e6afd62', 0),
('insidesalesHS@b2bss.es', 'Inside Sales Hospitality', 'c893bad68927b457dbed39460e6afd62', 0),
('insidesalesla@b2bss.es', 'Inside Sales Large Accounts', 'c893bad68927b457dbed39460e6afd62', 0),
('insidesalesR@b2bss.es', 'Inside Sales Retail', 'c893bad68927b457dbed39460e6afd62', 0),
('insidesalesTOP@b2bss.es', 'Inside Sales TOP', 'c893bad68927b457dbed39460e6afd62', 0),
('jamartinez@mcccloudservices.es', 'Javier Martinez', '7c44a14e11f144df730106d81cdc1db0', 1),
('mar.villa@tmr-online.es', 'Mar Villa', 'c893bad68927b457dbed39460e6afd62', 1),
('mayte.cabanas@tmr-online.es', 'Mayte Cabañas', 'c893bad68927b457dbed39460e6afd62', 1),
('sara.fernandez@tmr-online.es', 'Sara Fernández', 'c893bad68927b457dbed39460e6afd62', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
