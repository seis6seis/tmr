-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2013 a las 18:21:17
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crm_tmr`
--
CREATE DATABASE IF NOT EXISTS `crm_tmr` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
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
('CODAREACARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODAREACARGO', 0, 0, 0, '', 0),
('CODCARGO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODCARGO', 0, 0, 0, '', 0),
('CODEMPLEADOS', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODEMPLEADOS', 0, 0, 0, '', 0),
('CODINGRESOS', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODINGRESOS', 0, 0, 0, '', 0),
('CODMERCADO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODMERCADO', 0, 0, 0, '', 25),
('CODPERSONA', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'CODPERSONA', 0, 0, 0, '', 0),
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
('LITOFICINA', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'LITOFICINA', 0, 0, 0, '', 0),
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
('NOMBREENTERO', 'VARCHAR', 50, 'TEXT', 5, 0, '', 'NOMBREENTERO', 0, 0, 0, '', 0),
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
('TELEFONO3', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO3', 0, 0, 0, '', 0),
('TELEFONO4', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO4', 0, 0, 0, '', 0),
('TELEFONO5', 'VARCHAR', 50, 'TEL', 5, 0, '', 'TELEFONO5', 0, 0, 0, '', 0),
('TOP', 'VARCHAR', 20, 'TEXT', 5, 0, '', 'TOP', 0, 0, 0, '', 1),
('URL', 'VARCHAR', 255, 'TEXT', 5, 0, '', 'URL', 0, 0, 0, '', 0),
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
  `POLIGONO` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Poblacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Provincia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `CCAA` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
  `Fechallamada` date DEFAULT NULL,
  `NumLlamadasRealizadas` int(2) DEFAULT NULL,
  `CalidadBBDD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ResultadoLlamada` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ActualizarDatosBBDD` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaSeguimiento` date DEFAULT NULL,
  `ResumenConversacion` text COLLATE utf8_spanish2_ci,
  `Lead` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumPCs` int(50) DEFAULT NULL,
  `OppPCs` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraPCs` date DEFAULT NULL,
  `DistribuidorPCs` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarPCs` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoTablets` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumTablets` int(50) DEFAULT NULL,
  `OppTablets` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraTablets` date DEFAULT NULL,
  `DistribuidorTablets` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarTablets` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumMoviles` int(50) DEFAULT NULL,
  `OppMoviles` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraMoviles` date DEFAULT NULL,
  `DistribuidorMoviles` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarMoviles` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumImpresion` int(50) DEFAULT NULL,
  `OppImpresion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraImpresion` date DEFAULT NULL,
  `DistribuidorImpresion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarImpresion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ProyectoLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NumLFD` int(50) DEFAULT NULL,
  `OppLFD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FechaEstimadaCompraLFD` date DEFAULT NULL,
  `DistribuidorLFD` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MarcarLFD` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UsuarioAcceso` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `samsung`
--

INSERT INTO `samsung` (`TOP`, `URL`, `VIA`, `PISO`, `CALLE`, `JULIO`, `BLOQUE`, `JUANAN`, `NUMERO`, `NUMSCH`, `PUERTA`, `LITSEXO`, `CODACTR2`, `CODCARGO`, `ESCALERA`, `LITACTR2`, `LITCARGO`, `SEXOCARGO`, `TELEFONO1`, `TELEFONO2`, `TELEFONO3`, `TELEFONO4`, `TELEFONO5`, `CODMERCADO`, `CODPERSONA`, `LITMERCADO`, `LITOFICINA`, `CODINGRESOS`, `COMPLEMENTO`, `NOMBRECARGO`, `CODAREACARGO`, `CODEMPLEADOS`, `LITAREACARGO`, `NOMBREENTERO`, `APELLIDO1CARGO`, `APELLIDO2CARGO`, `ACTIVIDADNEGOCIAL`, `CIF`, `NombreFiscal`, `NombreComercial`, `GrupoEmpresarial`, `Actividad`, `Facturacion`, `NumEmpleados`, `NumPCsEmpresa`, `Direccion`, `CP`, `POLIGONO`, `Poblacion`, `Provincia`, `CCAA`, `Fechallamada`, `NumLlamadasRealizadas`, `CalidadBBDD`, `ResultadoLlamada`, `ActualizarDatosBBDD`, `FechaSeguimiento`, `ResumenConversacion`, `Lead`, `ProyectoPCs`, `NumPCs`, `OppPCs`, `FechaEstimadaCompraPCs`, `DistribuidorPCs`, `MarcarPCs`, `ProyectoTablets`, `NumTablets`, `OppTablets`, `FechaEstimadaCompraTablets`, `DistribuidorTablets`, `MarcarTablets`, `ProyectoMoviles`, `NumMoviles`, `OppMoviles`, `FechaEstimadaCompraMoviles`, `DistribuidorMoviles`, `MarcarMoviles`, `ProyectoImpresion`, `NumImpresion`, `OppImpresion`, `FechaEstimadaCompraImpresion`, `DistribuidorImpresion`, `MarcarImpresion`, `ProyectoLFD`, `NumLFD`, `OppLFD`, `FechaEstimadaCompraLFD`, `DistribuidorLFD`, `MarcarLFD`, `UsuarioAcceso`) VALUES
('', NULL, 'LUGAR', '', 'FINCA DEHESILLA', '', '', '', '0 S-N', '003440906', '', 'EMPRESA', '2512', NULL, '', 'FRUTAS VERDURAS Y FRUTAS EXOTICAS MAY', 'DIRECTOR DE RECURSOS HUMANOS', 'HOMBRE', '959385236', '959394323', NULL, NULL, NULL, '46', NULL, 'ALIMENTACION Y BEBIDAS', NULL, NULL, '', 'ANTONIO', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'INFANTE', '', '', 'A21362389', 'CITRICOS DEL ANDEVALO SA.', '', '', '', '', 0, 0, 'LUGAR FINCA DEHESILLA S-N', '21540', '', 'VILLANUEVA DE LOS CASTILLEJOS', 'HUELVA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CARRER', '5º', 'ALMOGAVERS', '', '', '', '107', '001007285', '', 'EMPRESA', '0761', NULL, '', 'ELECTRODOMESTICOS FAB', 'DIRECTOR DE RECURSOS HUMANOS', 'MUJER', '932922122', '', NULL, NULL, NULL, '34', NULL, 'ELECTRICIDAD Y ELECTRONICA', NULL, NULL, 'EDIF ECOURBAN', 'MARINA', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'TARRADELLAS', '', '', 'A58153990', 'TEFAL ESPAÑA S.A.', '', '', '', '', 0, 0, 'CARRER ALMOGAVERS, 107 5º EDIF ECOURBAN', '08018', '', 'BARCELONA', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('Lola', NULL, 'CARRER', 'B', 'NARCIS MONTURIOL I ESTARRIOL', 'Named', '', '', '17', '001241199', '', 'EMPRESA', '2310', NULL, '', 'MAQUINARIA EQUIPOS Y APARATOS MAY COM', 'DIRECTOR DE INFORMATICA', 'HOMBRE', '963604180', '963604247', NULL, NULL, NULL, '42', NULL, 'MAQUINARIA, EQUIPO Y APARATOS', NULL, NULL, 'PQUE TECNOLOGICO EDIF AS CENTER 3 AZUL', 'JAVIER', NULL, NULL, 'INFORMATICA', NULL, 'SANCHEZ', '', '', 'A58399767', 'ABB METRON S.A.', '', '', '', '', 0, 0, 'CARRER NARCIS MONTURIOL I ESTARRIOL, 17 B PQUE TECNOLOGICO EDIF AS CENTER 3 AZUL', '46980', 'PARQUE TECNOLÓGICO DE PATERNA', 'PATERNA', 'VALENCIA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CARRER', '', 'PROVENÇALS', '', '', '', '39', '003659521', '', 'EMPRESA', '2197', NULL, '', 'AGENTES INMOBILIARIOS', '', '', '934133200', '932933030', NULL, NULL, NULL, '15', NULL, 'EMPRESAS DE SERVICIOS', NULL, NULL, '', '', NULL, NULL, '', NULL, '', '', '', 'A63379135', 'SERVIHABITAT XXI SA', '', '', '', '', 0, 0, 'CARRER PROVENÇALS, 39', '08019', '', 'BARCELONA', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'POLIGONO', '', 'INDUSTRIAL MIRALCAMPO', '', '', '', '12', '001699123', '', 'EMPRESA', '0381', NULL, '', 'CERVEZA MAY', 'DIRECTOR DE RECURSOS HUMANOS', 'HOMBRE', '949264426', '949264424', NULL, NULL, NULL, '46', NULL, 'ALIMENTACION Y BEBIDAS', NULL, NULL, '', 'ANDRES', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'GARCIA', '', '', 'A80684111', 'GMODELO EUROPA SA', '', '', '', '', 0, 0, 'POLIGONO INDUSTRIAL MIRALCAMPO, 12', '19200', 'POLÍGONO INDUSTRIAL MIRALCAMPO', 'AZUQUECA DE HENARES', 'GUADALAJARA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'AVENIDA', '', 'PARTENON', '', '', '', '12', '001723766', '', 'EMPRESA', '0768', NULL, '', 'PRODUCCION DE ENERGIA ELECTRICA', 'JEFE DE COMPRAS', 'HOMBRE', '913379518', '913376000', NULL, NULL, NULL, '16', NULL, 'ENERGIA Y AGUA', NULL, NULL, '', 'JAVIER', NULL, NULL, 'COMPRAS', NULL, 'MARTINEZ', '', '', 'A83491019', 'GENERACION ELECTRICA PENINSULAR S.A.', '', '', '', '', 0, 0, 'AVENIDA PARTENON, 12', '28042', '', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CARRETERA', '', 'N - 332', '', '', '', '0', '003614559', '', 'EMPRESA', '1168', NULL, '', 'ZUMOS DE FRUTA FAB', 'DIRECTOR DE COMPRAS', 'HOMBRE', '962850200', '962838425', NULL, NULL, NULL, '46', NULL, 'ALIMENTACION Y BEBIDAS', NULL, NULL, 'KM 206.900', 'VICTOR', NULL, NULL, 'COMPRAS', NULL, 'MORCUENDE', '', '', 'A83745695', 'REFRESCO IBERIA SA', '', '', '', '', 0, 0, 'CARRETERA N - 332 KM 206.900', '46780', '', 'OLIVA', 'VALENCIA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('Lola', NULL, 'CALLE', '', 'VELAZQUEZ', '', '', 'Named', '132', '004108064', '', 'EMPRESA', '2884', NULL, '', 'BARCOS Y BUQUES FAB', 'DIRECTOR DE INFORMATICA', 'HOMBRE', '913358553', '913358400', NULL, NULL, NULL, '35', NULL, 'VEHICULOS, RECAMBIOS Y ACCESORIOS', NULL, NULL, '', 'PEDRO ANTONIO', NULL, NULL, 'INFORMATICA', NULL, 'MARTINEZ', '', '', 'A84076397', 'NAVANTIA SA', '', '', '', '', 0, 0, 'VELAZQUEZ, 132', '28006', '', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CARRER', '3º', 'JOSEP ROVER MOTTA', '', '', '', '27', '001821891', '', 'EMPRESA', '0656', NULL, '', 'TURISMO SERVICIOS', 'DIRECTOR DE RECURSOS HUMANOS', 'MUJER', '971771700', '', NULL, NULL, NULL, '15', NULL, 'EMPRESAS DE SERVICIOS', NULL, NULL, '', 'MARIA CARMEN', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'OLIVER', '', '', 'B07067564', 'AUXILIAIR S.L.', '', '', '', '', 0, 0, 'CARRER JOSEP ROVER MOTTA, 27 3º', '07006', 'POLÍGONO INDUSTRIAL SON CASTELLÓ', 'PALMA', 'BALEARES', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'VIAL', '', 'SAN JOSE', '', '', '', '0 S-N', '001859180', '', 'EMPRESA', '0211', NULL, '', 'AUTOMOVILES ALQUILER', '', '', '971126844', '971126970', NULL, NULL, NULL, '15', NULL, 'EMPRESAS DE SERVICIOS', NULL, NULL, 'VIAL 1 SOLAR 3 Y 4 LO 2', '', NULL, NULL, '', NULL, '', '', '', 'B07947591', 'SIXT RENT A CAR SL', '', '', '', '', 0, 0, 'VIAL SAN JOSE S-N VIAL 1 SOLAR 3 Y 4 LO 2', '07009', 'POLÍGONO INDUSTRIAL SON CASTELLÓ', 'PALMA', 'BALEARES', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'AVENIDA', '', 'SANTANDER', '', '', '', '2', '003782240', '', 'EMPRESA', '2390', NULL, '', 'LECHE Y DERIVADOS DE LECHE FAB', 'DIRECTOR DE RECURSOS HUMANOS', 'HOMBRE', '983250450', '983320384', NULL, NULL, NULL, '46', NULL, 'ALIMENTACION Y BEBIDAS', NULL, NULL, 'NAVE', 'TOMAS', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'BARRIGA', '', '', 'B27313899', 'INDUSTRIAS LACTEAS VALLISOLETANAS SL', '', '', '', '', 0, 0, 'AVENIDA SANTANDER, 2 NAVE', '47010', '', 'VALLADOLID', 'VALLADOLID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CARRER', '', 'MARIA CURIE', '', '', '', '6', '002897502', '', 'EMPRESA', '2151', NULL, '', 'AGRICULTURA', '', '', '937733800', '937741441', NULL, NULL, NULL, '56', NULL, 'AGRICULTURA Y PESCA', NULL, NULL, '', '', NULL, NULL, '', NULL, '', '', '', 'B62583471', 'CARGILL SL', '', '', '', '', 0, 0, 'CARRER MARIA CURIE, 6', '08760', 'POLÍGONO INDUSTRIAL LA TORRE', 'MARTORELL', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'AUTOVIA', 'BJ', 'A - 2', '', '', '', '0', '002918530', '', 'EMPRESA', '1919', NULL, '', 'VIAJES AGENCIAS', 'DIRECTOR DE RECURSOS HUMANOS', 'MUJER', '937677930', '963767793', NULL, NULL, NULL, '21', NULL, 'TRANSPORTES Y TRAFICO', NULL, NULL, 'KM 672.500', 'CRISTINA', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'SAULEDA', '', '', 'B62880992', 'N T INCOMING SL', '', '', '', '', 0, 0, 'AUTOVIA A - 2 BJ KM 672.500', '08398', '', 'CASC URBA - SANTA SUSANNA', 'BARCELONA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'AVENIDA', '', 'ANDALUCIA', '', '', '', '0', '003074622', '', 'EMPRESA', '2390', NULL, '', 'LECHE Y DERIVADOS DE LECHE FAB', 'DIRECTOR DE INFORMATICA', 'HOMBRE', '958274050', '958277071', NULL, NULL, NULL, '46', NULL, 'ALIMENTACION Y BEBIDAS', NULL, NULL, 'NAVE', 'JOSE', NULL, NULL, 'INFORMATICA', NULL, 'PUENTE', '', '', 'B81576985', 'GRUPO DHUL S.L.', '', '', '', '', 0, 0, 'AVENIDA ANDALUCIA NAVE', '18015', '', 'GRANADA', 'GRANADA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CAMINO', '', 'ZARZUELA', '', '', '', '15', '003120508', '', 'EMPRESA', '1575', NULL, '', 'INMOBILIARIAS AGENCIAS Y AGENTES', 'DIRECTOR DE MARKETING', 'MUJER', '914576070', '916253000', NULL, NULL, NULL, '15', NULL, 'EMPRESAS DE SERVICIOS', NULL, NULL, '', 'RAQUEL', NULL, NULL, 'MARKETING', NULL, 'BRAVO', '', '', 'B82219999', 'GRUPO EMPRESARIAL PINAR SL', '', '', '', '', 0, 0, 'CAMINO ZARZUELA, 15', '28023', '', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'PASEO', '', 'CASTELLANA', '', '', '', '123', '003131802', '', 'EMPRESA', '1575', NULL, '', 'INMOBILIARIAS AGENCIAS Y AGENTES', 'DIRECTOR DE RECURSOS HUMANOS', 'HOMBRE', '913915002', '', NULL, NULL, NULL, '15', NULL, 'EMPRESAS DE SERVICIOS', NULL, NULL, '', 'DAVID', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'LAMOTE', '', '', 'B82354713', 'PIK POBEDY PROMOCIONES S.L.', '', '', '', '', 0, 0, 'PASEO CASTELLANA, 123', '28046', '', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('Lola', NULL, 'CARRETERA', '', 'VILLAVERDE A VALLECAS', '', '', 'Named', '257', '003753381', '', 'EMPRESA', '3350', NULL, '', 'TRANSPORTES URBANOS DE MERCANCIAS', 'DIRECTOR DE RECURSOS HUMANOS', 'HOMBRE', '913228080', '913320802', NULL, NULL, NULL, '21', NULL, 'TRANSPORTES Y TRAFICO', NULL, NULL, '', 'ANTONIO', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'MARTINEZ', 'GARCIA', '', 'B82516600', 'SEUR GEOPOST SL', '', '', '', '', 0, 0, 'CARRETERA VILLAVERDE A VALLECAS, 257', '28031', '', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'LEKU', '', 'BARRIO TRAPAGA', '', '', '', '0 S-N', '003180189', '', 'EMPRESA', '2874', NULL, '', 'VEHICULOS FERROVIARIOS FAB', 'DIRECTOR DE RECURSOS HUMANOS', 'HOMBRE', '944869100', '944869128', NULL, NULL, NULL, '35', NULL, 'VEHICULOS, RECAMBIOS Y ACCESORIOS', NULL, NULL, '', 'IÑAQUI', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'ROJO', 'MARTIN', '', 'B82894049', 'BOMBARDIER EUROPEAN HOLDINGS S.L.', '', '', '', '', 0, 0, 'BARRIO TRAPAGA LEKU S-N', '48510', 'POLÍGONO INDUSTRIAL TRÁPAGA UGARTE', 'VALLE DE TRAPAGA - TRAPAGARAN', 'VIZCAYA', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CAMINO', '', 'HORMIGUERAS', '', '', '', '171', '003604584', '', 'EMPRESA', '1049', NULL, '', 'ASESORES FINANCIEROS Y DE INVERSIONES', 'DIRECTOR DE COMPRAS', 'HOMBRE', '916424580', '913057019', NULL, NULL, NULL, '27', NULL, 'ASESORIA JURIDICA, ECONOMICA Y NOTARIAS', NULL, NULL, '', 'RUBEN', NULL, NULL, 'COMPRAS', NULL, 'TORRADO', '', '', 'B83667725', 'SERTEGO SERVICIOS MEDIOAMBIENTALES SL', '', '', '', '', 0, 0, 'CAMINO HORMIGUERAS, 171', '28031', 'POLÍGONO INDUSTRIAL DE VALLECAS', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'PLAZA', '', 'CARLOS TRIAS BERTRAN', '', '', '', '7', '003247301', '', 'EMPRESA', '3287', NULL, '', 'OBRAS PUBLICAS', 'JEFE DE COMPRAS', 'HOMBRE', '914170800', '915455000', NULL, NULL, NULL, '5', NULL, 'CONSTRUCCION Y OBRAS PUBLICAS', NULL, NULL, '', 'MANUEL', NULL, NULL, 'COMPRAS', NULL, 'CESPEDOSA', '', '', 'B83681247', 'ENAITINERE SL.', '', '', '', '', 0, 0, 'PLAZA CARLOS TRIAS BERTRAN, 7', '28020', '', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CALLE', '', 'MIGUEL YUSTE', '', '', '', '45', '003710381', '', 'EMPRESA', '3908', NULL, '', 'OBRAS Y SERVICIOS', 'DIRECTOR DE INFORMATICA', 'HOMBRE', '914237511', '914237500', NULL, NULL, NULL, '14', NULL, 'DISEÑO Y SERVICIOS DE CONSTRUCCION', NULL, NULL, '', 'ALEJANDRO', NULL, NULL, 'INFORMATICA', NULL, 'SIERRA', '', '', 'B83901041', 'TERRATEST CIMENTACIONES SL.', '', '', '', '', 0, 0, 'MIGUEL YUSTE, 45', '28037', 'POLÍGONO INDUSTRIAL JULIÁN CAMARILLO', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CALLE', '', 'CANTABRIA', '', '', '', '2', '004133849', '', 'EMPRESA', '0006', NULL, '', 'MERCADO DE LAS TELECOMUNICACIONES', 'DIRECTOR DE INFORMATICA', 'HOMBRE', '914891937', '913342171', NULL, NULL, NULL, '65', NULL, 'TELECOMUNICACIONES', NULL, NULL, '', 'JAVIER', NULL, NULL, 'INFORMATICA', NULL, 'MARTINEZ', '', '', 'B84134246', 'EURONET TELERECARGA SL', '', '', '', '', 0, 0, 'CANTABRIA, 2', '28108', 'PARQUE EMPRESARIAL ARROYO DE LA VEGA', 'ALCOBENDAS', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'CALLE', '', 'FEDERICO MOMPOU', '', '', '', '5', '004134813', '', 'EMPRESA', '4383', NULL, '', 'SERVICIOS TELEMATICOS', 'DIRECTOR DE RECURSOS HUMANOS', 'MUJER', '913843888', '913841020', NULL, NULL, NULL, '65', NULL, 'TELECOMUNICACIONES', NULL, NULL, '', 'NATALIA', NULL, NULL, 'RECURSOS HUMANOS', NULL, 'WISTER', '', '', 'B84136464', 'HUAWEI TECHNOLOGIES ESPAÑA S.L.', '', '', '', '', 0, 0, 'FEDERICO MOMPOU, 5', '28050', 'PARQUE EMPRESARIAL CERRO DE LAS CUEVAS', 'MADRID', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es'),
('', NULL, 'AVENIDA', '', 'BRUSELAS', '', '', '', '35', '004135661', '', 'EMPRESA', '1424', NULL, '', 'INFORMATICA EMPRESAS DE SERVICIOS', 'DIRECTOR DE MARKETING', 'MUJER', '915948700', '918049159', NULL, NULL, NULL, '66', NULL, 'INFORMATICA', NULL, NULL, '', 'EMMA', NULL, NULL, 'MARKETING', NULL, 'FERNANDEZ', 'ALONSO', '', 'B84138296', 'INDRA BMB SL', '', '', '', '', 0, 0, 'AVENIDA BRUSELAS, 35', '28108', 'POLÍGONO INDUSTRIAL ALCOBENDAS', 'ALCOBENDAS', 'MADRID', '', '0000-00-00', 0, '', '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', '', 0, '', '0000-00-00', '', '', 'insidesalesR@b2bss.es');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `samsung_contactos`
--

INSERT INTO `samsung_contactos` (`ID`, `CIFEmpresa`, `Nombre`, `Apellidos`, `Cargo`, `AreaCargo`, `email`, `Telefono`, `Movil`, `SexoCargo`) VALUES
(1, 'A58153990', 'MARINA', 'TARRADELLAS', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '932922122', '', 'M'),
(2, 'A58153990', 'FEDERIC', 'SURIR', 'DIRECTOR DE MARKETING', 'MARKETING', '', '932922122', '', 'H'),
(3, 'A58153990', 'OLGA', 'ALCOBENDAS', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '932922122', '', 'M'),
(4, 'A58399767', 'JAVIER', 'SANCHEZ', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '963604180', '963604247', 'H'),
(5, 'A58399767', 'SALVADOR', 'PEREZ', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '963604180', '963604247', 'H'),
(6, 'A58399767', 'IGNACIO', 'LOPEZ', 'DIRECTOR DE MARKETING', 'MARKETING', '', '963604180', '963604247', 'H'),
(7, 'A58399767', 'IGNACIO', 'CHAROLA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '963604180', '963604247', 'H'),
(8, 'A80684111', 'ANDRES', 'GARCIA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '949264426', '949264424', 'H'),
(9, 'A83491019', 'JAVIER', 'MARTINEZ', 'JEFE DE COMPRAS', 'COMPRAS', '', '913379518', '913376000', 'H'),
(10, 'B07067564', 'MARIA CARMEN', 'OLIVER', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '971771700', '', 'M'),
(11, 'B07067564', 'SARA', 'RAMIS', 'DIRECTOR DE MARKETING', 'MARKETING', '', '971771700', '', 'M'),
(12, 'B07067564', 'EDUARDO', 'MARTINEZ', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '971771700', '', 'H'),
(13, 'B07067564', 'RAFAEL', 'PALOU', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '971771700', '', 'H'),
(14, 'B07947591', '', '', '', '', '', '971126844', '971126970', ''),
(15, 'B62583471', '', '', '', '', '', '937733800', '937741441', ''),
(16, 'B62880992', 'CRISTINA', 'SAULEDA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '937677930', '963767793', 'M'),
(17, 'B81576985', 'JOSE', 'PUENTE', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '958274050', '958277071', 'H'),
(18, 'B81576985', 'ROGELIO', 'MORILLAS', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '958274050', '958277071', 'H'),
(19, 'B82219999', 'RAQUEL', 'BRAVO', 'DIRECTOR DE MARKETING', 'MARKETING', '', '914576070', '916253000', 'M'),
(20, 'B82219999', 'ARANTXA', 'VAZQUEZ', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '914576070', '916253000', 'M'),
(21, 'B82354713', 'DAVID', 'LAMOTE', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '913915002', '', 'H'),
(22, 'B82354713', 'DAVID', 'LAMOTE', 'DIRECTOR DE MARKETING', 'MARKETING', '', '913915002', '', 'H'),
(23, 'B82354713', 'SUSANA', 'ESTEBAN', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '913915002', '', 'M'),
(24, 'B82894049', 'IÑAQUI', 'ROJO', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '944869100', '944869128', 'H'),
(25, 'B82894049', 'CARLOS', 'ARENAS', 'DIRECTOR DE MARKETING', 'MARKETING', '', '944869100', '944869128', 'H'),
(26, 'B82894049', 'GERARDO', 'MARQUINEZ', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '944869100', '944869128', 'H'),
(27, 'B82894049', 'FERNANDO', 'ARRANZ', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '944869100', '944869128', 'H'),
(28, 'B83681247', 'MANUEL', 'CESPEDOSA', 'JEFE DE COMPRAS', 'COMPRAS', '', '914170800', '915455000', 'H'),
(29, 'B83681247', 'MANUEL', 'CESPEDOSA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '914170800', '915455000', 'H'),
(30, 'A21362389', 'ANTONIO', 'INFANTE', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '959385236', '959394323', 'H'),
(31, 'B83667725', 'RUBEN', 'TORRADO', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '916424580', '913057019', 'H'),
(32, 'B83667725', 'FRANCISCO', 'DE VIS', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '916424580', '913057019', 'H'),
(33, 'B83667725', 'IGNACIO', 'GARCIA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '916424580', '913057019', 'H'),
(34, 'A83745695', 'VICTOR', 'MORCUENDE', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '962850200', '962838425', 'H'),
(35, 'A83745695', 'JOSE MANUEL', 'HERRAIZ', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '962850200', '962838425', 'H'),
(36, 'A83745695', 'ANA', 'DE DIEGO', 'DIRECTOR DE MARKETING', 'MARKETING', '', '962850200', '962838425', 'M'),
(37, 'A63379135', '', '', '', '', '', '934133200', '932933030', ''),
(38, 'B83901041', 'ALEJANDRO', 'SIERRA', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '914237511', '914237500', 'H'),
(39, 'B83901041', 'ANTONIO', 'MANADA', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '914237511', '914237500', 'H'),
(40, 'B83901041', 'ANGEL', 'MORILLA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '914237511', '914237500', 'H'),
(41, 'B82516600', 'ANTONIO', 'MARTINEZ', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '913228080', '913320802', 'H'),
(42, 'B82516600', 'JOSE LUIS', 'BAJO', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '913228080', '913320802', 'H'),
(43, 'B82516600', 'RICARDO', 'MARTIN', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '913228080', '913320802', 'H'),
(44, 'B27313899', 'TOMAS', 'BARRIGA', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '983250450', '983320384', 'H'),
(45, 'A84076397', 'PEDRO ANTONIO', 'MARTINEZ', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '913358553', '913358400', 'H'),
(46, 'A84076397', 'JUANA MARIA', 'FERNANDE', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '913358553', '913358400', 'M'),
(47, 'B84134246', 'JAVIER', 'MARTINEZ', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '914891937', '913342171', 'H'),
(48, 'B84134246', 'ENRIQUE', 'SOLER', 'JEFE DE COMPRAS', 'COMPRAS', '', '914891937', '913342171', 'H'),
(49, 'B84136464', 'NATALIA', 'WISTER', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '913843888', '913841020', 'M'),
(50, 'B84136464', 'ANA ELIA', 'MARTIN', 'DIRECTOR DE MARKETING', 'MARKETING', '', '913843888', '913841020', 'M'),
(51, 'B84136464', 'LUIS', 'GUERRA', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '913843888', '913841020', 'H'),
(52, 'B84136464', 'JULIAN', 'AIJON', 'DIRECTOR DE COMPRAS', 'COMPRAS', '', '913843888', '913841020', 'H'),
(53, 'B84138296', 'EMMA', 'FERNANDEZ', 'DIRECTOR DE MARKETING', 'MARKETING', '', '915948700', '918049159', 'M'),
(54, 'B84138296', 'TOMAS', 'CONTRERAS', 'DIRECTOR DE RECURSOS HUMANOS', 'RECURSOS HUMANOS', '', '915948700', '918049159', 'H'),
(55, 'B84138296', 'JOSE', 'REY', 'DIRECTOR DE INFORMATICA', 'INFORMATICA', '', '915948700', '918049159', 'H');

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
