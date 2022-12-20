-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.11.1-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para home_now
CREATE DATABASE IF NOT EXISTS `home_now` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `home_now`;

-- Volcando estructura para tabla home_now.cuenta
CREATE TABLE IF NOT EXISTS `cuenta` (
  `id_cuenta` int(100) NOT NULL AUTO_INCREMENT,
  `id_inmuebles` int(100) NOT NULL,
  `id_usuarios` int(100) NOT NULL,
  PRIMARY KEY (`id_cuenta`),
  KEY `FK_cuenta_inmuebles` (`id_inmuebles`),
  KEY `FK_cuenta_usuarios` (`id_usuarios`),
  CONSTRAINT `FK_cuenta_inmuebles` FOREIGN KEY (`id_inmuebles`) REFERENCES `inmuebles` (`id_inmueble`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cuenta_usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla home_now.inmuebles
CREATE TABLE IF NOT EXISTS `inmuebles` (
  `id_inmueble` int(100) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pais` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` int(90) DEFAULT NULL,
  `tamaño` int(90) DEFAULT NULL,
  `antiguedad` int(4) DEFAULT NULL,
  `tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla home_now.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `apellidos` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `edad` int(2) DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
