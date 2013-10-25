-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2013 a las 18:26:54
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
  `Titulo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `TamanoTabla` int(5) DEFAULT NULL,
  `TamanoPantalla` int(5) NOT NULL,
  `Clave` tinyint(1) NOT NULL,
  `Name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Requerido` tinyint(1) NOT NULL COMMENT 'Si el campo es obligatorio',
  `Columna` int(2) NOT NULL DEFAULT '1',
  `Posicion` int(3) NOT NULL,
  PRIMARY KEY (`Titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `disenotabla`
--

INSERT INTO `disenotabla` (`Titulo`, `Tipo`, `TamanoTabla`, `TamanoPantalla`, `Clave`, `Name`, `Requerido`, `Columna`, `Posicion`) VALUES
('¿Con qué Marcas de Impresion Trabaja Habitualmente?', 'VARCHAR', 50, 20, 0, 'txtMarcarImpresion', 1, 3, 23),
('¿Con qué Marcas de LFD Trabaja Habitualmente?', 'VARCHAR', 50, 20, 0, 'txtMarcarLFD', 1, 3, 29),
('¿Con qué Marcas de Moviles Trabaja Habitualmente?', 'VARCHAR', 50, 20, 0, 'txtMarcarMoviles', 1, 3, 17),
('¿Con qué Marcas de PCs Trabaja Habitualmente?', 'VARCHAR', 50, 20, 0, 'txtMarcarPCs', 1, 3, 6),
('¿Con qué Marcas de Tablets Trabaja Habitualmente?', 'VARCHAR', 50, 20, 0, 'txtMarcarTablets', 1, 3, 12),
('¿Qué Distribuidor/es le venden los Impresion habitualmente?', 'VARCHAR', 50, 20, 0, 'txtDistribuidorImpresion', 1, 3, 22),
('¿Qué Distribuidor/es le venden los LFD habitualmente?', 'VARCHAR', 50, 20, 0, 'txtDistribuidorLFD', 1, 3, 28),
('¿Qué Distribuidor/es le venden los Moviles habitualmente?', 'VARCHAR', 50, 20, 0, 'txtDistribuidorMoviles', 1, 3, 5),
('¿Qué Distribuidor/es le venden los PCs habitualmente?', 'VARCHAR', 50, 20, 0, 'txtDistribuidorPCs', 1, 3, 5),
('¿Qué Distribuidor/es le venden los Tablets habitualmente?', 'VARCHAR', 50, 20, 0, 'txtDistribuidorTablets', 1, 3, 11),
('¿Tiene proyecto de Impresion?', 'VARCHAR', 50, 20, 0, 'txtProyectoImpresion', 1, 3, 18),
('¿Tiene proyecto de LFD?', 'VARCHAR', 50, 20, 0, 'txtProyectoLFD', 1, 3, 24),
('¿Tiene proyecto de Moviles?', 'VARCHAR', 50, 20, 0, 'txtProyectoMoviles', 1, 3, 13),
('¿Tiene proyecto de PCs?', 'VARCHAR', 50, 20, 0, 'txtProyectoPCs', 1, 3, 1),
('¿Tiene proyecto de Tablets?', 'VARCHAR', 50, 20, 0, 'txtProyectoTablets', 1, 3, 7),
('Actividad', 'VARCHAR', 50, 20, 0, 'txtActividad', 1, 1, 5),
('Actualizar Datos en BBDD', 'VARCHAR', 50, 20, 0, 'txtActualizarDatosBBDD', 1, 2, 5),
('Calidad BBDD', 'VARCHAR', 50, 20, 0, 'txtCalidadBBDD', 1, 2, 3),
('CC.AA.', 'VARCHAR', 50, 20, 0, 'txtCCAA', 1, 1, 28),
('CIF', 'VARCHAR', 10, 10, 1, 'txtCIF', 0, 1, 1),
('CP', 'VARCHAR', 5, 5, 0, 'txtCP', 1, 1, 24),
('Dirección', 'VARCHAR', 50, 20, 0, 'txtDireccion', 1, 1, 23),
('Facturación', 'VARCHAR', 50, 20, 0, 'txtFacturacion', 1, 1, 6),
('Fecha de Llamada', 'VARCHAR', 50, 20, 0, 'txtFechallamada', 1, 2, 1),
('Fecha de Seguimiento', 'VARCHAR', 50, 20, 0, 'txtFechaSeguimiento', 1, 2, 6),
('Fecha Estimada Compra Impresion', 'VARCHAR', 50, 20, 0, 'txtFechaEstimadaCompraImpresion', 1, 3, 21),
('Fecha Estimada Compra LFD', 'VARCHAR', 50, 20, 0, 'txtFechaEstimadaCompraLFD', 1, 3, 27),
('Fecha Estimada Compra Moviles', 'VARCHAR', 50, 20, 0, 'txtFechaEstimadaCompraMoviles', 1, 3, 16),
('Fecha Estimada Compra PCs', 'VARCHAR', 50, 20, 0, 'txtFechaEstimadaCompraPCs', 1, 3, 4),
('Fecha Estimada Compra Tablets', 'VARCHAR', 50, 20, 0, 'txtFechaEstimadaCompraTablets', 1, 3, 10),
('Grupo Empresarial', 'VARCHAR', 50, 20, 0, 'txtGrupoEmpresarial', 1, 1, 3),
('Lead', 'VARCHAR', 50, 20, 0, 'txtLead', 1, 2, 8),
('Nº de Llamadas Realizadas', 'VARCHAR', 50, 20, 0, 'txtNumLlamadasRealizaddas', 1, 2, 2),
('Nº de PCs', 'VARCHAR', 50, 20, 0, 'txtNumPCs', 1, 1, 8),
('Nº Empleados', 'VARCHAR', 50, 20, 0, 'txtNumEmpleados', 1, 1, 7),
('Nº Impresion', 'VARCHAR', 50, 20, 0, 'txtNumImpresion', 1, 3, 19),
('Nº LFD', 'VARCHAR', 50, 20, 0, 'txtNumLFD', 1, 3, 25),
('Nº Moviles', 'VARCHAR', 50, 20, 0, 'txtNumMoviles', 1, 3, 14),
('Nº PCs', 'VARCHAR', 50, 20, 0, 'txtNumPCs', 1, 3, 2),
('Nº Tablets', 'VARCHAR', 50, 20, 0, 'txtNumTablets', 1, 3, 8),
('Nombre Comercial', 'VARCHAR', 50, 20, 0, 'nombre comercial', 1, 1, 2),
('Nombre Fiscal', 'VARCHAR', 50, 20, 0, 'txtNombreFiscal', 0, 1, 2),
('Opp Impresion €', 'VARCHAR', 50, 20, 0, 'txtOppImpresion', 1, 3, 20),
('Opp LFD €', 'VARCHAR', 50, 20, 0, 'txtOppLFD', 1, 3, 26),
('Opp Moviles €', 'VARCHAR', 50, 20, 0, 'txtOppMoviles', 1, 3, 15),
('Opp PCs €', 'VARCHAR', 50, 20, 0, 'txtOppPCs', 1, 3, 3),
('Opp Tablets €', 'VARCHAR', 50, 20, 0, 'txtOppTablets', 1, 3, 9),
('Población', 'VARCHAR', 50, 20, 0, 'txtPoblacion', 1, 1, 26),
('Provincia', 'VARCHAR', 50, 20, 0, 'txtProvincia', 1, 1, 27),
('Resultado de la Llamada', 'VARCHAR', 50, 20, 0, 'txtResultadoLlamada', 1, 2, 4),
('Resumen de la Conversación', 'VARCHAR', 50, 20, 0, 'txtResumenConversacion', 1, 2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sansungcontactos`
--

CREATE TABLE IF NOT EXISTS `sansungcontactos` (
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
