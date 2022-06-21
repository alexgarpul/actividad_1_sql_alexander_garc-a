-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para papeleria_laley
DROP DATABASE IF EXISTS `papeleria_laley`;
CREATE DATABASE IF NOT EXISTS `papeleria_laley` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `papeleria_laley`;

-- Volcando estructura para tabla papeleria_laley.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `cost` float DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla es la encargada de persistir los productos ';

-- Volcando datos para la tabla papeleria_laley.product: ~3 rows (aproximadamente)
DELETE FROM `product`;
INSERT INTO `product` (`id`, `name`, `price`, `cost`) VALUES
	(1, 'sacapuntas', 1000.00, 500),
	(2, 'borrador', 1400.00, 600),
	(3, 'cuaderno', 2500.00, 1700);

-- Volcando estructura para tabla papeleria_laley.providers
DROP TABLE IF EXISTS `providers`;
CREATE TABLE IF NOT EXISTS `providers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `NIT` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla es la encargada de persistir a todos los proveedores';

-- Volcando datos para la tabla papeleria_laley.providers: ~2 rows (aproximadamente)
DELETE FROM `providers`;
INSERT INTO `providers` (`id`, `name`, `NIT`, `address`) VALUES
	(1, 'Scribe', 'TR00M9', 'cr45 127-14'),
	(2, 'norma', 'QR00P7', 'cr55 128-25');

-- Volcando estructura para tabla papeleria_laley.shopping
DROP TABLE IF EXISTS `shopping`;
CREATE TABLE IF NOT EXISTS `shopping` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `providers_id` varchar(50) NOT NULL DEFAULT '',
  `product` varchar(50) NOT NULL DEFAULT '',
  `cost_unit` float(12,2) NOT NULL DEFAULT 0.00,
  `amout` smallint(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla es la encargada de persistir las compras';

-- Volcando datos para la tabla papeleria_laley.shopping: ~3 rows (aproximadamente)
DELETE FROM `shopping`;
INSERT INTO `shopping` (`id`, `date`, `providers_id`, `product`, `cost_unit`, `amout`) VALUES
	(1, '2022-06-13', '2', '3', 2500.00, 5),
	(2, '2022-06-11', '1', '2', 600.00, 7),
	(3, '2022-06-07', '2', '1', 500.00, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
