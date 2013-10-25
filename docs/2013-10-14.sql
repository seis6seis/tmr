-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-10-2013 a las 02:00:08
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
  `Titulo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `TamanoTabla` int(5) DEFAULT NULL,
  `tipoPantalla` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `TamanoPantalla` int(5) NOT NULL,
  `Clave` tinyint(1) NOT NULL,
  `Name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `NameBBDD` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'Nombre que tendra en la BBDD',
  `Requerido` tinyint(1) NOT NULL COMMENT 'Si el campo es obligatorio',
  `Columna` int(2) NOT NULL DEFAULT '1',
  `Posicion` int(3) NOT NULL,
  `Default` varchar(255) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'En caso que tenga valor por defecto',
  PRIMARY KEY (`Titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `disenotabla`
--

INSERT INTO `disenotabla` (`Titulo`, `Tipo`, `TamanoTabla`, `tipoPantalla`, `TamanoPantalla`, `Clave`, `Name`, `NameBBDD`, `Requerido`, `Columna`, `Posicion`, `Default`) VALUES
('¿Con qué Marcas de Impresion Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarImpresion', 'MarcarImpresion', 0, 6, 6, ''),
('¿Con qué Marcas de LFD Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarLFD', 'MarcarLFD', 0, 7, 6, ''),
('¿Con qué Marcas de Moviles Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarMoviles', 'MarcarMoviles', 0, 5, 6, ''),
('¿Con qué Marcas de PCs Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarPCs', 'MarcarPCs', 0, 3, 6, ''),
('¿Con qué Marcas de Tablets Trabaja Habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtMarcarTablets', 'MarcarTablets', 0, 4, 6, ''),
('¿Qué Distribuidor/es le venden los Impresion habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorImpresion', 'DistribuidorImpresion', 0, 6, 5, ''),
('¿Qué Distribuidor/es le venden los LFD habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorLFD', 'DistribuidorLFD', 0, 7, 5, ''),
('¿Qué Distribuidor/es le venden los Moviles habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorMoviles', 'DistribuidorMoviles', 0, 5, 5, ''),
('¿Qué Distribuidor/es le venden los PCs habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorPCs', 'DistribuidorPCs', 0, 3, 5, ''),
('¿Qué Distribuidor/es le venden los Tablets habitualmente?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDistribuidorTablets', 'DistribuidorTablets', 0, 4, 5, ''),
('¿Tiene proyecto de Impresion?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoImpresion', 'ProyectoImpresion', 0, 6, 1, ''),
('¿Tiene proyecto de LFD?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoLFD', 'ProyectoLFD', 0, 7, 1, ''),
('¿Tiene proyecto de Moviles?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoMoviles', 'ProyectoMoviles', 0, 5, 1, ''),
('¿Tiene proyecto de PCs?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoPCs', 'ProyectoPCs', 0, 3, 1, ''),
('¿Tiene proyecto de Tablets?', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProyectoTablets', 'ProyectoTablets', 0, 4, 1, ''),
('Actividad', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtActividad', 'Actividad', 1, 1, 5, ''),
('Actualizar Datos en BBDD', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtActualizarDatosBBDD', 'ActualizarDatosBBDD', 0, 2, 5, ''),
('Calidad BBDD', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtCalidadBBDD', 'CalidadBBDD', 0, 2, 3, ''),
('CC.AA.', 'VARCHAR', 50, 'NUMBER', 20, 0, 'txtCCAA', 'CCAA', 1, 1, 28, ''),
('CIF', 'VARCHAR', 10, 'TEXT', 10, 1, 'txtCIF', 'CIF', 1, 1, 1, ''),
('CP', 'VARCHAR', 5, 'NUMBER', 5, 0, 'txtCP', 'CP', 1, 1, 24, ''),
('Dirección', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtDireccion', 'Direccion', 1, 1, 23, ''),
('Facturación', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtFacturacion', 'Facturacion', 1, 1, 6, ''),
('Fecha de Llamada', 'DATE', 0, 'DATE', 7, 0, 'txtFechallamada', 'Fechallamada', 0, 2, 1, ''),
('Fecha de Seguimiento', 'DATE', 0, 'DATE', 7, 0, 'txtFechaSeguimiento', 'FechaSeguimiento', 0, 2, 6, ''),
('Fecha Estimada Compra Impresion', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraImpresion', 'FechaEstimadaCompraImpresion', 0, 6, 4, ''),
('Fecha Estimada Compra LFD', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraLFD', 'FechaEstimadaCompraLFD', 0, 7, 4, ''),
('Fecha Estimada Compra Moviles', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraMoviles', 'FechaEstimadaCompraMoviles', 0, 5, 4, ''),
('Fecha Estimada Compra PCs', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraPCs', 'FechaEstimadaCompraPCs', 0, 3, 4, ''),
('Fecha Estimada Compra Tablets', 'DATE', 0, 'DATE', 7, 0, 'txtFechaEstimadaCompraTablets', 'FechaEstimadaCompraTablets', 0, 4, 4, ''),
('Grupo Empresarial', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtGrupoEmpresarial', 'GrupoEmpresarial', 1, 1, 3, ''),
('Lead', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtLead', 'Lead', 0, 2, 8, ''),
('Nº de Llamadas Realizadas', 'INT', 2, 'NUMBER', 5, 0, 'txtNumLlamadasRealizadas', 'NumLlamadasRealizadas', 0, 2, 2, ''),
('Nº de PCs Empresa', 'INT', 4, 'NUMBER', 4, 0, 'txtNumPCsEmpresa', 'NumPCsEmpresa', 1, 1, 8, ''),
('Nº Empleados', 'INT', 4, 'NUMBER', 4, 0, 'txtNumEmpleados', 'NumEmpleados', 1, 1, 7, ''),
('Nº Impresion', 'INT', 50, 'NUMBER', 20, 0, 'txtNumImpresion', 'NumImpresion', 0, 6, 2, ''),
('Nº LFD', 'INT', 50, 'NUMBER', 20, 0, 'txtNumLFD', 'NumLFD', 0, 7, 2, ''),
('Nº Moviles', 'INT', 50, 'NUMBER', 20, 0, 'txtNumMoviles', 'NumMoviles', 0, 5, 2, ''),
('Nº PCs', 'INT', 50, 'NUMBER', 20, 0, 'txtNumPCs', 'NumPCs', 0, 3, 2, ''),
('Nº Tablets', 'INT', 50, 'NUMBER', 20, 0, 'txtNumTablets', 'NumTablets', 0, 4, 2, ''),
('Nombre Comercial', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtNombreComercial', 'NombreComercial', 1, 1, 2, ''),
('Nombre Fiscal', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtNombreFiscal', 'NombreFiscal', 1, 1, 2, ''),
('Opp Impresion €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppImpresion', 'OppImpresion', 0, 6, 3, ''),
('Opp LFD €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppLFD', 'OppLFD', 0, 7, 3, ''),
('Opp Moviles €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppMoviles', 'OppMoviles', 0, 5, 3, ''),
('Opp PCs €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppPCs', 'OppPCs', 0, 3, 3, ''),
('Opp Tablets €', 'MONEDA', 50, 'NUMBER', 20, 0, 'txtOppTablets', 'OppTablets', 0, 4, 3, ''),
('Población', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtPoblacion', 'Poblacion', 1, 1, 26, ''),
('Provincia', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtProvincia', 'Provincia', 1, 1, 27, ''),
('Resultado de la Llamada', 'VARCHAR', 50, 'TEXT', 20, 0, 'txtResultadoLlamada', 'ResultadoLlamada', 0, 2, 4, ''),
('Resumen de la Conversación', 'TEXT', 0, 'TEXT', 20, 0, 'txtResumenConversacion', 'ResumenConversacion', 0, 2, 7, '');

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
('mar.villa@tmr-online.es', 'Mar Villa', 'c893bad68927b457dbed39460e6afd62', 1),
('mayte.cabanas@tmr-online.es', 'Mayte Cabañas', 'c893bad68927b457dbed39460e6afd62', 1),
('sara.fernandez@tmr-online.es', 'Sara Fernández', 'c893bad68927b457dbed39460e6afd62', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
