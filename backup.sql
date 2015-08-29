/* mi script
SQLyog - Free MySQL GUI v5.19
Host - 5.1.40-community : Database - db_farmacia
*********************************************************************
Server version : 5.1.40-community
*/
SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_farmacia`;

USE `db_farmacia`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `frm_catalogo_ie` */

DROP TABLE IF EXISTS `frm_catalogo_ie`;

CREATE TABLE `frm_catalogo_ie` (
  `cie_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cie_cuenta` varchar(80) NOT NULL,
  `cie_estado` char(1) NOT NULL,
  PRIMARY KEY (`cie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `frm_catalogo_ie` */

insert into `frm_catalogo_ie` (`cie_id`,`cie_cuenta`,`cie_estado`) values (1,'CAPITAL','V');
insert into `frm_catalogo_ie` (`cie_id`,`cie_cuenta`,`cie_estado`) values (2,'BANCO','V');
insert into `frm_catalogo_ie` (`cie_id`,`cie_cuenta`,`cie_estado`) values (3,'CAJA CHICA','V');

/*Table structure for table `frm_categoria` */

DROP TABLE IF EXISTS `frm_categoria`;

CREATE TABLE `frm_categoria` (
  `cat_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`cat_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `frm_categoria` */

insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (1,'DETERGENTE');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (2,'DESINFECTANTE');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (3,'CLORO');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (4,'JABON');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (5,'BUCAL');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (6,'SUAVISANTE');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (7,'PAPEL DE BAÑO');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (8,'CEREAL');
insert into `frm_categoria` (`cat_codigo`,`cat_descripcion`) values (9,'PASTA DENTAL');

/*Table structure for table `frm_cdetalle` */

DROP TABLE IF EXISTS `frm_cdetalle`;

CREATE TABLE `frm_cdetalle` (
  `cdet_cantidad` int(11) NOT NULL,
  `cdet_subtotal` float NOT NULL,
  `cdet_precio` float NOT NULL,
  `pro_codigo` varchar(20) NOT NULL,
  `com_id` int(11) NOT NULL,
  PRIMARY KEY (`com_id`,`pro_codigo`),
  KEY `FK_frm_cdetalle_1` (`pro_codigo`),
  CONSTRAINT `FK_frm_cdetalle_1` FOREIGN KEY (`pro_codigo`) REFERENCES `frm_producto` (`pro_codigo`) ON UPDATE CASCADE,
  CONSTRAINT `FK_frm_cdetalle_2` FOREIGN KEY (`com_id`) REFERENCES `frm_compra` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_cdetalle` */

insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,2254,112.7,'NIEV001',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,2254,112.7,'NIEV002',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (30,3381,112.7,'NIEV003',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,2254,112.7,'NIEV004',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,3381,225.4,'NIEV005',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (7,241.5,34.5,'SOL001',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (3,103.5,34.5,'SOL002',1);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,1590.8,79.54,'ESP001',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,1067,106.7,'ESP002',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,785.7,52.38,'ESP003',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (13,0,0,'TEX001',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,0,0,'TEX003',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (3,256.08,85.36,'ULT001',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (2,170.72,85.36,'ULT002',2);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (54,4293.54,79.51,'ESP001',3);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,1200,48,'TEX003',3);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,1200,120,'KLI001',4);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,856.8,57.12,'TEX001',4);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (26,1584.96,60.96,'TEX002',4);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (2,0,0,'ULT001',4);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT002',4);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT003',4);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,277.35,55.47,'TEX001',5);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT001',5);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,1250,62.5,'GAL001',6);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (8,348,43.5,'XTRA001',6);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (6,270,45,'XTRA002',6);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,652.5,43.5,'XTRA001',7);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,652.5,43.5,'XTRA002',7);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (8,348,43.5,'XTRA001',8);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (4,174,43.5,'XTRA002',8);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,92.5,92.5,'BLAN001',9);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (14,1330,95,'ROS001',9);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,261.9,52.38,'ESP003',10);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,84.5,84.5,'POT001',10);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,950,95,'ROS001',11);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,435,43.5,'XTRA001',11);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,435,43.5,'XTRA002',11);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,652.5,43.5,'XTRA003',11);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,835.8,55.72,'TEX001',12);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,2817.5,112.7,'NIEV001',13);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,2817.5,112.7,'NIEV002',13);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,2254,112.7,'NIEV003',13);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,2254,112.7,'NIEV004',13);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,2254,225.4,'NIEV005',13);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (24,2280,95,'ROS001',14);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,1067,106.7,'ESP002',15);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,523.8,52.38,'ESP003',15);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT002',15);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT003',15);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (12,522,43.5,'XTRA001',16);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (13,565.5,43.5,'XTRA002',16);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,1087.5,43.5,'XTRA003',16);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,870,43.5,'XTRA001',17);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,652.5,43.5,'XTRA002',17);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (40,1740,43.5,'XTRA003',17);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,422.5,84.5,'POT001',18);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (14,630,45,'XTRA001',19);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,450,45,'XTRA002',19);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,450,45,'XTRA003',19);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,845,84.5,'POT001',20);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,45,45,'XTRA003',21);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,97.75,97.75,'ROS001',22);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (2,112,56,'TEX001',22);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,86.5,86.5,'ULT001',22);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,86.5,86.5,'ULT003',22);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,1375,55,'XTRA001',23);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (50,2750,55,'XTRA003',23);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,1250,50,'XTRA002',24);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,132,132,'KLO001',25);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (20,2134,106.7,'ESP002',26);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,1798.5,119.9,'KLI001',26);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT001',26);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.8,85.36,'ULT002',26);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,426.75,85.35,'ULT003',26);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (3,219.9,73.3,'SUA001',27);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (3,327,109,'SUA002',28);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,587,587,'COL001',29);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (4,388.08,97.02,'BEX001',30);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (8,776.16,97.02,'BEX002',31);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (8,776.16,97.02,'BEX003',32);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,1236,123.6,'KLI002',33);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (2,0,0,'ULT001',34);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (30,1571.4,52.38,'ESP003',35);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,1060.7,70.713,'ESP005',35);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,1100,110,'ESP002',36);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,1428,57.12,'TEX001',36);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (25,1200,48,'TEX003',36);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,880,88,'ULT001',36);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,880,88,'ULT002',36);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (10,880,88,'ULT003',36);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,25,25,'SUA005',37);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (1,56,56,'ARI001',38);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (3,346.5,115.5,'NIEV001',39);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,416.25,83.25,'POT001',39);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,1690.5,112.7,'NIEV001',40);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (15,1690.5,112.7,'NIEV003',40);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,577.5,115.5,'NIEV002',41);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (5,577.5,115.5,'NIEV002',42);
insert into `frm_cdetalle` (`cdet_cantidad`,`cdet_subtotal`,`cdet_precio`,`pro_codigo`,`com_id`) values (8,0,0,'TEX001',43);

/*Table structure for table `frm_cliente` */

DROP TABLE IF EXISTS `frm_cliente`;

CREATE TABLE `frm_cliente` (
  `cte_nombre` varchar(180) NOT NULL,
  `cte_direccion` varchar(120) DEFAULT NULL,
  `cte_tel` varchar(20) DEFAULT NULL,
  `cte_nit` varchar(20) NOT NULL,
  `cte_tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`cte_nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_cliente` */

insert into `frm_cliente` (`cte_nombre`,`cte_direccion`,`cte_tel`,`cte_nit`,`cte_tipo`) values ('C/F','0','0','000000',NULL);
insert into `frm_cliente` (`cte_nombre`,`cte_direccion`,`cte_tel`,`cte_nit`,`cte_tipo`) values ('KEVIN AGUILAR','CIUDAD','0','17229928','R');

/*Table structure for table `frm_compra` */

DROP TABLE IF EXISTS `frm_compra`;

CREATE TABLE `frm_compra` (
  `com_id` int(11) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_total` float NOT NULL,
  `com_estado` char(1) NOT NULL,
  `com_proveedor` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_compra` */

insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (1,'2013-12-24 10:19:19',13869,'A',4);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (2,'2013-12-24 10:28:43',3870.3,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (3,'2013-12-24 10:30:41',5493.54,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (4,'2013-12-24 10:36:25',4495.36,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (5,'2013-12-24 10:37:21',704.15,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (6,'2013-12-24 10:40:21',1868,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (7,'2013-12-24 10:41:10',1305,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (8,'2013-12-24 10:42:18',522,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (9,'2013-12-24 10:43:58',1422.5,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (10,'2013-12-24 11:56:53',346.4,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (11,'2014-01-04 08:29:54',2472.5,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (12,'2014-01-04 08:31:58',835.8,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (13,'2014-01-06 16:37:29',12397,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (14,'2014-01-06 16:38:53',2280,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (15,'2014-01-06 16:51:27',2444.4,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (16,'2014-01-07 18:38:50',2175,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (17,'2014-01-07 18:40:21',3262.5,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (18,'2014-01-07 18:42:17',422.5,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (19,'2014-01-08 15:10:48',1530,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (20,'2014-01-08 15:20:26',845,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (21,'2014-01-08 15:21:03',45,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (22,'2014-01-12 18:08:26',382.75,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (23,'2014-01-14 12:33:06',4125,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (24,'2014-01-14 12:35:26',1250,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (25,'2014-01-15 09:08:53',132,'A',7);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (26,'2014-01-15 21:12:31',5212.85,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (27,'2014-01-21 11:16:54',219.9,'A',8);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (28,'2014-01-21 11:19:41',327,'A',8);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (29,'2014-01-21 11:28:12',587,'A',8);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (30,'2014-01-21 11:45:22',388.08,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (31,'2014-01-21 11:46:23',776.16,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (32,'2014-01-21 11:47:03',776.16,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (33,'2014-01-21 11:51:43',1236,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (34,'2014-01-21 11:53:29',0,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (35,'2014-01-21 12:06:04',2632.1,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (36,'2014-01-21 12:29:00',6368,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (37,'2014-01-21 19:53:20',25,'A',8);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (38,'2014-01-21 19:55:16',56,'A',8);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (39,'2014-01-23 08:29:36',762.75,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (40,'2014-01-23 16:29:06',3381,'A',1);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (41,'2014-01-26 17:20:58',577.5,'X',2);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (42,'2014-01-26 17:34:49',577.5,'A',2);
insert into `frm_compra` (`com_id`,`com_fecha`,`com_total`,`com_estado`,`com_proveedor`) values (43,'2014-01-26 17:37:21',0,'A',1);

/*Table structure for table `frm_departamento` */

DROP TABLE IF EXISTS `frm_departamento`;

CREATE TABLE `frm_departamento` (
  `dep_codigo` int(11) NOT NULL,
  `dep_nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`dep_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_departamento` */

insert into `frm_departamento` (`dep_codigo`,`dep_nombre`) values (1,'GUATEMALA');

/*Table structure for table `frm_empleado` */

DROP TABLE IF EXISTS `frm_empleado`;

CREATE TABLE `frm_empleado` (
  `emp_codigo` int(11) NOT NULL,
  `emp_nombre` varchar(120) NOT NULL,
  `emp_tel` varchar(20) DEFAULT NULL,
  `emp_direccion` varchar(120) DEFAULT NULL,
  `emp_sueldo` float DEFAULT NULL,
  `emp_puesto` varchar(40) DEFAULT NULL,
  `emp_usr` char(14) NOT NULL,
  `emp_clave` varchar(80) NOT NULL,
  `emp_estado` char(1) NOT NULL,
  `emp_sucursal` int(10) unsigned NOT NULL,
  PRIMARY KEY (`emp_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_empleado` */

insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (1,'KEVIN AGUILAR','51841825','',0,'REPRESENTANTE LEGAL','kaag','d2e7a2105d0fb461fe6f2858cc33942f','A',1);
insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (2,'MANUEL PEREZ','49597397','',2000,'ADMINISTRADOR','eperez','3583ec37b796699467c34fba5853631f','E',0);
insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (3,'HEIDY GARCIA','31172811','',0,'PROVEEDURIA','hgarcia','2b3fa384f44b8cd2706a952cf183065e','A',1);
insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (4,'JESSENIA PINTO','0','',0,'FINANZAS','jpinto','3d213f9d218b6d367ae5f7249282d918','A',2);
insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (5,'CONY SOMA','0','',1200,'VENDEDORA','csoma','38e63f10e615a64a08767e2d4840fc6f','A',2);
insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (6,'LUIS ENRIQUE GARCIA','42292806','',0,'MERCADEO','egarcia','62809ab7c1d80677b47e96da5359b178','A',1);
insert into `frm_empleado` (`emp_codigo`,`emp_nombre`,`emp_tel`,`emp_direccion`,`emp_sueldo`,`emp_puesto`,`emp_usr`,`emp_clave`,`emp_estado`,`emp_sucursal`) values (7,'CELIA ESPERANZA AGUILAR','57805134',NULL,1000,'VENDEDORA','caguilar','2f01e8db4149b2a7fa5ec9ec2de8495f','A',1);

/*Table structure for table `frm_existencia` */

DROP TABLE IF EXISTS `frm_existencia`;

CREATE TABLE `frm_existencia` (
  `pro_codigo` varchar(20) NOT NULL,
  `suc_codigo` int(10) unsigned NOT NULL,
  `exi_existencia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pro_codigo`,`suc_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_existencia` */

insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ARI001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ARI001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BEX001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BEX001',2,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BEX002',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BEX002',2,7);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BEX003',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BEX003',2,3);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BLAN001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('BLAN001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('COL001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('COL001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('COL002U',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('COL002U',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP001',1,16);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP001',2,15);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP002',1,8);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP002',2,16);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP003',1,11);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP003',2,9);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP004',1,5);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP004',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP005',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ESP005',2,9);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('GAL001',1,3);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('GAL001',2,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('GAL002M',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('GAL002M',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('JAB001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('JAB001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI001',1,4);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI001',2,6);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI002',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI002',2,4);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI003',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI003',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI004',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLI004',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLO001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('KLO001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV001',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV001',2,5);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV002',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV002',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV003',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV003',2,4);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV004',1,3);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV004',2,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV005',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV005',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV006',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV006',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV007',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV007',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV008',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV008',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV009',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV009',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV010',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('NIEV010',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('POT001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('POT001',2,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ROS001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ROS001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SOL001',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SOL001',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SOL002',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SOL002',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA001',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA001',2,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA002',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA002',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA003U',1,11);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA003U',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA004U',1,5);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA004U',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA005',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('SUA005',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX001',1,5);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX001',2,6);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX001D',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX001D',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX001U',1,10);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX002',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX002',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX002M',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX003',1,15);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX003',2,8);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX004',1,1);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('TEX004',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT001',1,4);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT001',2,6);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT002',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT002',2,4);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT003',1,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT003',2,2);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT004M',1,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('ULT004M',2,0);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('XTRA001',1,8);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('XTRA001',2,6);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('XTRA002',1,17);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('XTRA002',2,12);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('XTRA003',1,5);
insert into `frm_existencia` (`pro_codigo`,`suc_codigo`,`exi_existencia`) values ('XTRA003',2,31);

/*Table structure for table `frm_ingresos_egresos` */

DROP TABLE IF EXISTS `frm_ingresos_egresos`;

CREATE TABLE `frm_ingresos_egresos` (
  `ie_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ie_monto` float NOT NULL,
  `ie_descripcion` varchar(180) NOT NULL,
  `ie_documento` varchar(45) DEFAULT NULL,
  `ie_responsable` varchar(45) DEFAULT NULL,
  `ie_usr` char(14) NOT NULL,
  `ie_fecha` datetime NOT NULL,
  `ie_tipo` char(1) NOT NULL,
  `ie_cuenta` int(11) NOT NULL,
  PRIMARY KEY (`ie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Data for the table `frm_ingresos_egresos` */

insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (1,143.2,'2 costaneras 3 x 2 1mm ','factura 42163','KEVIN ','jpinto','2013-12-07 08:56:29','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (2,248.1,'1 costanera 3 x 2 1 MM 1 costanera  3 x 2 3/64 comer  1 costanera 4 x 2 1MM','factura 42162','KEVIN AGUILAR','jpinto','2013-12-07 09:01:13','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (3,181.2,'2 costaneras 3 x 2  3/64 comer','factura 42184','  KEVIN AGUILAR','jpinto','2013-12-07 09:02:59','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (4,4000,'deposito inicial','',' JESENIA GONZALEZ','jpinto','2013-12-07 09:17:52','I',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (5,500,'INCREMENTO CAJA CHICA','',' JJESENIA GONZALEZ','jpinto','2013-12-07 09:22:12','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (6,55.95,' MATERIAL PARA BODEGA','FACTURA 443331',' KEVIN AGUILAR','jpinto','2013-12-07 09:24:59','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (7,525,' HABITACION DE CONNI ','RECIBO 1','  KEVIN AGUILAR','jpinto','2013-12-07 09:32:04','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (8,109,' recarga para don manuel  formulario de la sat  parqueo gasolina vehiculo de don manuel','',' LUIS GARCIA','jpinto','2013-12-07 11:42:45','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (9,86,' suministros para oficina','factura 0606',' JESENIA GONZALEZ','jpinto','2013-12-07 11:45:49','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (10,315,' patente de comercio','',' LUIS GARCIA','jpinto','2013-12-07 11:47:52','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (11,200,' honorarios de los gestores de la patente de comercio','',' LUIS GARCIA','jpinto','2013-12-07 11:49:11','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (12,40,'gastos varios gasolina, parqueo, copias',' recibo  2',' LUIS GARCIAS','jpinto','2013-12-07 11:50:24','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (13,333.35,' pago de fin de mes de noviembre','recibo 3',' MANUEL PEREZ','jpinto','2013-12-07 11:52:46','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (14,75,' recargas electronicas','recibo 4',' LUIS GARCIA','jpinto','2013-12-07 11:53:53','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (15,200,' libros contables, gastos varios','recibo 5',' LUIS GARCIA','jpinto','2013-12-07 11:55:46','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (16,187.5,'pasaje','recibo 6',' CONNI MACIAS','jpinto','2013-12-07 11:56:44','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (17,100,' gasolina, tramite de patente','recibo 7','MANUEL PEREZ','jpinto','2013-12-07 11:58:10','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (18,2299.3,'','','','jpinto','2013-12-07 12:17:40','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (19,3154.15,'','','','jpinto','2013-12-07 12:20:48','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (20,14,' lijas para oficina','factura 78427',' JESENIA GONZALEZ','jpinto','2013-12-10 16:56:42','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (21,81,' pintura y lija para bodega','factura 43311',' JESENIA GONZALEZ','jpinto','2013-12-10 17:00:29','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (22,45,' pintura bodega','factura 43324',' JESENIA GONZALEZ','jpinto','2013-12-10 17:01:35','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (23,162.02,' material para electrico','factura 196681',' LUIS GARCIA','jpinto','2013-12-10 17:04:42','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (24,4.2,' material electrico','factura 196684',' L LUIS GARCIA','jpinto','2013-12-10 17:06:23','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (25,50,'una recarga para celular de conni','',' JESENIA GONZALEZ','jpinto','2013-12-10 17:07:54','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (26,9045,' aporte','','KEVIN AGUILAR','egarcia','2013-12-11 16:37:48','I',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (27,1000,'ajuste para compra de producto ','','KEVIN AGUILAR','jpinto','2013-12-13 15:44:27','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (28,1000,'ajuste para compra de mercaderia','',' KEVIN AGUILAR','jpinto','2013-12-13 15:46:16','I',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (29,91.25,'madera ventanal','factura  04194',' LUIS GARCIA','jpinto','2013-12-13 15:51:27','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (30,1000,'sueldo quincenal de don manuel perez diciembre  ','recibo 2','JESENIA GONZALEZ','jpinto','2013-12-14 13:50:15','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (31,500,'aporte de luis garcia','','JESENIA GONZALEZ','jpinto','2013-12-14 13:55:18','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (32,1000,'aporte a mercaderia ','','KEVIN AGUILAR','jpinto','2013-12-14 13:58:30','I',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (33,102,'traslado de banco a caja chica','','KEVIN AGULAR','jpinto','2013-12-14 14:01:32','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (34,102,'traslado de banco a caja chica ','','KEVIN AGUILAR','jpinto','2013-12-14 14:03:56','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (35,9500,'compra de mercaderia','','KEVIN AGUILAR ','jpinto','2013-12-14 15:05:32','I',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (36,450,'sueldo conni quincena diciembre','recibo 3','JESENIA GONZALEZ','jpinto','2013-12-14 15:06:36','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (37,40,' gasolina flete ','factura 60053',' JESENIA GONZALEZ','jpinto','2013-12-18 15:38:46','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (38,475,'tubular rueda 8 alemana','factura 0033536',' HEIDY GARCIA ','jpinto','2013-12-18 16:30:40','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (39,50,'gasolina flete','factura 60130',' JESENIA GONZALEZ','jpinto','2013-12-20 06:49:46','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (40,97.5,'playeras uniforme ','factura serie ca-28  numero 16992',' LUIS GARCIA ','jpinto','2013-12-20 06:54:21','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (41,20.5,'GASTOS VARIOS  CARGADOR Q 12.00  FACTURA Q 6.00  MASKIN TAPE  Q 2.50','recibo 004','CONNI MACIAS','jpinto','2013-12-21 10:55:13','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (42,500,'APORTE CAPITAL LUIS GARCIA ','',' LUIS GARCIA','jpinto','2013-12-21 11:03:17','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (43,350,' FACTURAS CONTABLES Y FACTURAS ESPECIALES','FACTURA  0247',' JESENIA GONZALEZ ','jpinto','2013-12-21 11:11:31','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (44,130.5,'APORTE CAPITAL ','','LUIS GARCIA','jpinto','2013-12-21 11:15:48','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (45,130.5,'UNIFORME SURTI MAS ','FACTURA  SERIE CA-28 N. 16952','LUIS GARCIA ','jpinto','2013-12-21 11:17:11','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (46,25,'aporte capita luis garcia','',' LUIS GARCIA','jpinto','2013-12-21 18:58:37','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (47,25,'para comprar envios','','LUIS GARCIA','jpinto','2013-12-21 19:04:47','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (48,109,'aporte capital luis garcia','','LUIS GARCIA ','jpinto','2013-12-21 19:10:01','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (49,109,'telefono conni ','factura claro ','LUIS GARCIA','jpinto','2013-12-21 19:10:35','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (50,237,'canastas navideñas','','JESENIA GONZALEZ','jpinto','2013-12-21 19:19:14','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (51,22.5,'papel para canastas ','','JESENIA GONZALEZ','jpinto','2013-12-21 19:20:55','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (52,250,'aporte capital luis garcia ','factur',' LUIS GARCIA ','jpinto','2013-12-23 12:25:26','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (53,142.3,'canastas navideñas ','factura serie d8103 No 00189641','JESENIA GONZALEZ ','jpinto','2013-12-23 12:27:25','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (54,10,'gastos varios tape, talonario de envios, ','','LUIS GARCIA ','jpinto','2013-12-26 08:20:25','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (55,30,'gasolina flete ','factura 061874','LUIS GARCIA ','jpinto','2013-12-26 08:21:28','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (56,30,'gasolina flete ','factura No 60444','HEYDI GARCIA','jpinto','2013-12-30 13:49:00','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (57,600,' pago de fin de mes conni macias  30/12/2013','','JESENIA GONZALEZ','jpinto','2014-01-02 11:58:25','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (58,510,'pago de fin de mes de doña celia aguilar 30/12/2013','',' KEVIN AGUILAR ','jpinto','2014-01-02 11:59:49','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (59,255,'dinero para caja chica ','','JESENIA GONZALEZ ','jpinto','2014-01-02 12:04:28','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (60,255,'ingreso para caja chica','',' JESENIA GONZALEZ ','jpinto','2014-01-02 12:05:21','I',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (61,100,'PAGO INSCRIPCION SAT  CONTADOR (OSCAR RECINOS)','','KEVIN AGUILAR','egarcia','2014-01-02 21:59:44','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (62,30,'gasolina flete ','factura 60542','JESENIA GONZALEZ ','jpinto','2014-01-06 09:25:19','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (63,20,'gasolina flete ','factura 286413','HEIDY GARCIA ','jpinto','2014-01-06 12:06:57','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (64,50,'gasolina flete ','factura 00689','LUIS GARCIA ','jpinto','2014-01-08 13:49:05','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (65,30,'gasolina flete ','factura  286563','JESENIA GONZALEZ ','jpinto','2014-01-08 13:49:51','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (66,30,'gasolina flete ','factura 60750','HEIDY GARCIA ','jpinto','2014-01-11 14:39:17','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (67,30,'gasolina flete','factura 60812','HEIDY GARCIA ','jpinto','2014-01-11 14:39:58','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (68,40,'gasolina flete','factura 60855','JESENIA GONZALEZ','jpinto','2014-01-13 18:44:15','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (69,500,'adelanto sueldo conny ','','KEVIN AGUILAR','jpinto','2014-01-17 13:31:06','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (70,670,'sueldo mas comision conny','','KEVIN AGUILAR','jpinto','2014-01-17 13:32:14','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (71,520,'sueldo doña celia','','KEVIN AGUILAR','jpinto','2014-01-17 13:32:56','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (72,200,'sueldo heidy garcia','','KEVIN AGUILAR ','jpinto','2014-01-17 13:35:06','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (73,200,'sueldo jesenia gonzalez','','KEVIN AGUILAR','jpinto','2014-01-17 13:35:35','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (74,100,'adelanto conni  30 luis garcia 70 kevin aguilar','','KEVIN AGUILAR','jpinto','2014-01-17 14:27:38','E',1);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (75,75,'gasolina flete','','KEVIN AGUILAR','jpinto','2014-01-17 14:30:04','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (76,30,'gasolina flete ','recibo 006','HEIDY GARCIA','jpinto','2014-01-20 14:44:04','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (77,24,'varios papel pasante, tape, envios','recibo 007','JESENIA GONZALEZ','jpinto','2014-01-20 14:45:40','E',3);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (78,3450,'alquiler de bodega en la terminal','recibo 1','KEVIN AGUILAR','jpinto','2014-01-23 15:25:13','E',2);
insert into `frm_ingresos_egresos` (`ie_id`,`ie_monto`,`ie_descripcion`,`ie_documento`,`ie_responsable`,`ie_usr`,`ie_fecha`,`ie_tipo`,`ie_cuenta`) values (79,100,'adelanto sueldo de conni  30 luis garcia 70 kevin aguilar','','KEVIN AGUILAR','jpinto','2014-01-23 15:27:43','E',2);

/*Table structure for table `frm_menu` */

DROP TABLE IF EXISTS `frm_menu`;

CREATE TABLE `frm_menu` (
  `mnu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mnu_nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`mnu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `frm_menu` */

insert into `frm_menu` (`mnu_id`,`mnu_nombre`) values (1,'OPERACIONES');
insert into `frm_menu` (`mnu_id`,`mnu_nombre`) values (2,'ADMINISTRACION');
insert into `frm_menu` (`mnu_id`,`mnu_nombre`) values (3,'PRODUCTOS');
insert into `frm_menu` (`mnu_id`,`mnu_nombre`) values (4,'REPORTES');

/*Table structure for table `frm_presentacion` */

DROP TABLE IF EXISTS `frm_presentacion`;

CREATE TABLE `frm_presentacion` (
  `pre_codigo` int(10) unsigned NOT NULL,
  `pre_descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`pre_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_presentacion` */

insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (1,'CAJA');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (2,'BOLSA');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (3,'UNIDAD');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (4,'GALON');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (5,'BOTELLA');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (6,'FARDO');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (7,'1/2 CAJA');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (8,'KIT ');
insert into `frm_presentacion` (`pre_codigo`,`pre_descripcion`) values (9,'DOCENA');

/*Table structure for table `frm_prm_traslado` */

DROP TABLE IF EXISTS `frm_prm_traslado`;

CREATE TABLE `frm_prm_traslado` (
  `trs_cant_origen` int(11) NOT NULL,
  `trs_cant_destino` int(11) NOT NULL,
  `pro_cod_origen` varchar(20) NOT NULL,
  `pro_cod_destino` varchar(20) NOT NULL,
  PRIMARY KEY (`pro_cod_origen`,`pro_cod_destino`),
  KEY `FK_frm_prm_traslado_2` (`pro_cod_destino`),
  CONSTRAINT `FK_frm_prm_traslado_1` FOREIGN KEY (`pro_cod_origen`) REFERENCES `frm_producto` (`pro_codigo`),
  CONSTRAINT `FK_frm_prm_traslado_2` FOREIGN KEY (`pro_cod_destino`) REFERENCES `frm_producto` (`pro_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_prm_traslado` */

insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,72,'COL001','COL002U');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,10,'ESP001','ESP004');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,24,'ESP001','ESP999');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'GAL001','GAL002M');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'KLI001','KLI003');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'KLI002','KLI004');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'NIEV001','NIEV008');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'NIEV002','NIEV006');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'NIEV003','NIEV009');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'NIEV004','NIEV007');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'NIEV005','NIEV010');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,18,'SUA001','SUA003U');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,12,'SUA002','SUA004U');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,28,'TEX001','TEX001U');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'TEX002','TEX002M');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,4,'TEX003','TEX001D');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'TEX003','TEX004');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'TEX004','TEX001D');
insert into `frm_prm_traslado` (`trs_cant_origen`,`trs_cant_destino`,`pro_cod_origen`,`pro_cod_destino`) values (1,2,'ULT003','ULT004M');

/*Table structure for table `frm_producto` */

DROP TABLE IF EXISTS `frm_producto`;

CREATE TABLE `frm_producto` (
  `pro_codigo` varchar(20) NOT NULL,
  `pro_nombre` varchar(60) NOT NULL,
  `pro_descripcion` varchar(160) DEFAULT NULL,
  `pro_existencia` int(11) NOT NULL,
  `pro_precio_venta` float NOT NULL,
  `pro_presentacion` int(10) unsigned NOT NULL,
  `pro_categoria` int(10) unsigned NOT NULL,
  `pro_parent` varchar(20) DEFAULT NULL,
  `pro_estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`pro_codigo`),
  KEY `FK_frm_producto_1` (`pro_presentacion`),
  KEY `FK_frm_producto_2` (`pro_categoria`),
  CONSTRAINT `FK_frm_producto_1` FOREIGN KEY (`pro_presentacion`) REFERENCES `frm_presentacion` (`pre_codigo`),
  CONSTRAINT `FK_frm_producto_2` FOREIGN KEY (`pro_categoria`) REFERENCES `frm_categoria` (`cat_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_producto` */

insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('010102','asdfsdf','asfef',0,9.99,1,1,NULL,'E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('5364','SUKROL','VITAMINICO',0,8.5,1,3,'5364','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ALC-01','ALCOHOL','ALCOHOL ETILICO',0,7.5,1,3,'ALC-01','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ARI001','ARIEL','5 LITROS',0,85,4,1,'ARI001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ASP-C1','ASPIRINA','ASPIRINA EN CAJA',0,10.5,4,2,NULL,'E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ASP-C2','ASPIRINA','ASPIRINA INDIVIDUAL ',0,1,3,2,'ASP-C1','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ASP-C3','ASPIRINA','PARA DOLOR DE CABEZA ',0,8,2,2,'ASP-C1','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ASP-C4','ASPIRINA','DOLOR DE CABEZA',0,7.5,1,2,'ASP-C1','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('BEX001','BEX AZUL ','JABON BOLA',3,99,1,4,'BEX001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('BEX002','BEX VERDE','JABON BOLA GRANDE',7,99,1,4,'BEX002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('BEX003','BEX BLANCO','JABON BOLA GRANDE',7,99,1,4,'BEX003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('BLAN001','DOÑA BLANCA','TROZO',0,95,1,4,'BLAN001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('CB001','COMPLEJO B','VITAMINAS ',0,42.5,3,3,'CB001','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('COL001','COLGATE TRIPLE ACCION','150ML',0,0,1,9,'COL001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('COL002U','PASTA COLGATE','TRIPLE ACCION 150ML',8,12,3,9,'COL001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('DT0001','ARIEL','DETERGENTE EN POLVO',0,4.5,2,1,'DT0001','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('DT0002','MAGIA BLANCA','DETERGENTE EN POLVO',0,3.5,2,1,'DT0002','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ESP001','ESPUMIL','125 GRAMOS',37,90,6,1,'ESP001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ESP002','ESPUMIL','1 KILO',27,110,6,1,'ESP002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ESP003','ESPUMIL MULTIPACK','MULTIPACK',27,58,1,1,'ESP003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ESP004','ESPUMIL','125 GRAMOS',0,10,8,1,'ESP001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ESP005','ESPUMIL TROZO','JABON TROZO 18',14,74,1,4,'ESP005','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ESP999','ESPUMIL','125 GRAMOS',0,3.5,3,1,'ESP001','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('GAL001','GALLO ','250 GRAMOS',7,66,6,1,'GAL001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('GAL002M','DETERGENTE GALLO','250 GRAMOS',0,34,7,1,'GAL001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('JAB001','JABONITO','JABON BAÑO',0,173,1,4,'JAB001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('KLI001','KLIMPIAX LIMON','JABON TARRO',5,125,1,4,'KLI001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('KLI002','KLIMPIAX BICARBONATO','JABON TARRO',6,125,1,4,'KLI002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('KLI003','KLIMPIAX LIMON','JABON TARRO',1,62.5,7,4,'KLI001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('KLI004','KLIMPIAX BICARBONATO','JABON TARRO',1,62.5,7,4,'KLI004','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('KLO001','CEREAL KELLOGS','490 GRAMOS',0,210,1,8,'KLO001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV001','BLANCA NIEVES','1KILO',17,120,1,1,'NIEV001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV002','BLANCA NIEVE','100 GRAMOS',0,120,1,1,'NIEV002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV003','BLANCA NIEVES','250 GRAMOS',14,121,1,1,'NIEV003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV004','BLANCA NIEVES','500 GRAMOS',11,120,1,1,'NIEV004','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV005','BLANCA NIEVES','2 KILOS',2,240,1,1,'NIEV005','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV006','BLANCA NIEVES','100 GRAMOS',1,60,7,1,'NIEV002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV007','BLANCA NIEVES','500 GRAMOS',0,60,7,1,'NIEV004','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV008','BLANCA NIEVES','1 KILO',1,60,7,1,'NIEV001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV009','BLANCA NIEVES','250 GRAMOS',1,61,7,1,'NIEV003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('NIEV010','BLANCA NIEVES','2 KILOS',0,120,7,1,'NIEV005','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('PND-01','PANADOL EXTRA FUERTE','DOLORES DE TODO TIPO',0,1.5,4,1,'PND-01','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('PND-02','PANADOL EXTRA FUERTE','DOLOR DE CABEZA',0,1.5,2,1,'PND-01','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('POT001','POTENSOL','JABON TROZO',5,90,1,4,'POT001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ROS001','ROSAL VINO TINTO','ROLLO DE PAPEL ROSAL',0,100,6,7,'ROS001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SOL001','SOL BLANCO','JABON BOLA',0,36,1,4,'SOL001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SOL002','SOL AZUL','JABON BOLA',0,36,1,4,'SOL002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SUA001','SUAVITEL PRIMAVERA','500ML',2,0,1,6,'SUA001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SUA002','SUAVITEL PRIMAVERA','850ML',0,144,1,6,'SUA002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SUA003U','SUAVITEL PRIMAVERA','500 ML ',11,10,2,6,'SUA001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SUA004U','SUAVITEL PRIMAVERA','850ML',5,12,3,6,'SUA002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SUA005','SUAVITEL PRIMAVERA','3 LITROS',0,60,5,6,'SUA005','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('SUAOO3U','SUAVITEL PRIMAVERA','500ML',0,10,3,6,'SUA001','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX001','TEX MARQUETA','MARQUETA',10,60,1,4,'TEX001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX001D','TEX DISCO DOC','TEX DISCO POR DOCENA',1,13,9,4,'TEX003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX001U','TEX MARQUETA','TEX MARQUETA UNIDAD',0,2.17,3,4,'TEX001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX002','TEX TROSO','TROSO',6,62,1,4,'TEX 002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX002M','TEX TROSO ','TEX TROSO 1/2 CAJA',0,31,7,4,'TEX002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX003','TEX DISCO','DISCO',28,50,1,4,'TEX003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('TEX004','TEX DISCO','DISCO',0,26,7,4,'TEX003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ULT001','ULTRA KLIN AZUL','1 KILO',11,89,6,1,'ULT001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ULT002','ULTRA KLIN NARANJA','1 KILO',11,89,6,1,'ULT002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ULT003','ULTRA KLIN MORADO','1 KILO',6,89,6,1,'ULT003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('ULT004M','ULTRA KLIN MORADO','1 KILO',1,45,7,1,'ULT003','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('V01','VIAGRA','VIGORIZANTE SEXUAL',0,55.65,4,3,'V01','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('V02','VIAGRA','VIGORIZANTE SEXUAL',0,14.5,2,3,'V01','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('V03','VIAGRA','VIGORIZANTE SEXUAL',0,4.5,3,3,'V01','E');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('XTRA001','EXTRA BLANCO','JABON BOLA',10,65,1,4,'XTRA001','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('XTRA002','EXTRA ROSADO','JABON BOLA',31,62,1,4,'XTRA002','V');
insert into `frm_producto` (`pro_codigo`,`pro_nombre`,`pro_descripcion`,`pro_existencia`,`pro_precio_venta`,`pro_presentacion`,`pro_categoria`,`pro_parent`,`pro_estado`) values ('XTRA003','EXTRA VERDE','JABON EN BOLA',5,63,1,4,'XTRA003','V');

/*Table structure for table `frm_proveedor` */

DROP TABLE IF EXISTS `frm_proveedor`;

CREATE TABLE `frm_proveedor` (
  `prov_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prov_nombre` varchar(80) NOT NULL,
  `prov_direccion` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`prov_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `frm_proveedor` */

insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (1,'LA POPULAR','TERMINAL');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (2,'LA CASITA','TERMINAL');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (3,'UNITELER','TERMINAL');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (4,'LA UNION','TERMINAL');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (5,'HENKEL','MIXCO');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (6,'UNILEVER','TERMINAL');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (7,'KELLOGS','TERMINAL');
insert into `frm_proveedor` (`prov_id`,`prov_nombre`,`prov_direccion`) values (8,'COLGATE','GUATEMALA');

/*Table structure for table `frm_rol` */

DROP TABLE IF EXISTS `frm_rol`;

CREATE TABLE `frm_rol` (
  `rol_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rol_descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `frm_rol` */

insert into `frm_rol` (`rol_id`,`rol_descripcion`) values (1,'ADMINISTRADOR');
insert into `frm_rol` (`rol_id`,`rol_descripcion`) values (2,'ENCARGADO');
insert into `frm_rol` (`rol_id`,`rol_descripcion`) values (3,'VENTA');
insert into `frm_rol` (`rol_id`,`rol_descripcion`) values (4,'FINANZAS');

/*Table structure for table `frm_submenu` */

DROP TABLE IF EXISTS `frm_submenu`;

CREATE TABLE `frm_submenu` (
  `sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sub_nombre` varchar(80) NOT NULL,
  `sub_activo` char(1) NOT NULL,
  `mnu_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `FK_FRM_SUBMENU_1` (`mnu_id`),
  CONSTRAINT `FK_FRM_SUBMENU_1` FOREIGN KEY (`mnu_id`) REFERENCES `frm_menu` (`mnu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `frm_submenu` */

insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (1,'VENTA','S',1);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (2,'REVERSION','S',1);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (3,'TRASLADO','S',1);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (4,'PARAMETRIZA TRASLADO','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (5,'LISTAR/NUEVO','S',3);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (6,'COMPRA','S',3);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (7,'ROL','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (8,'CATEGORIA','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (9,'SUCURSAL','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (10,'PRESENTACION','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (11,'ASOCIACION ROL-MENU','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (12,'ASOCIACION ROL-USUARIO','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (13,'PROVEEDOR','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (14,'EMPLEADO','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (15,'DEPARTAMENTO','S',2);
insert into `frm_submenu` (`sub_id`,`sub_nombre`,`sub_activo`,`mnu_id`) values (16,'FINANZAS','S',2);

/*Table structure for table `frm_submenu_rol` */

DROP TABLE IF EXISTS `frm_submenu_rol`;

CREATE TABLE `frm_submenu_rol` (
  `sub_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sub_id`,`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_submenu_rol` */

insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (1,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (1,2);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (1,3);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (2,3);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (3,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (3,3);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (4,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (4,2);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (5,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (6,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (6,2);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (7,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (8,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (9,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (10,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (11,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (12,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (13,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (14,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (15,1);
insert into `frm_submenu_rol` (`sub_id`,`rol_id`) values (16,4);

/*Table structure for table `frm_sucursal` */

DROP TABLE IF EXISTS `frm_sucursal`;

CREATE TABLE `frm_sucursal` (
  `suc_codigo` int(11) NOT NULL,
  `suc_nombre` varchar(60) NOT NULL,
  `suc_direccion` varchar(180) DEFAULT NULL,
  `suc_zona` int(11) DEFAULT NULL,
  `dep_codigo` int(11) NOT NULL,
  PRIMARY KEY (`suc_codigo`),
  KEY `FK_frm_sucursal_1` (`dep_codigo`),
  CONSTRAINT `FK_frm_sucursal_1` FOREIGN KEY (`dep_codigo`) REFERENCES `frm_departamento` (`dep_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_sucursal` */

insert into `frm_sucursal` (`suc_codigo`,`suc_nombre`,`suc_direccion`,`suc_zona`,`dep_codigo`) values (1,'ZONA 12 ','15 Avenidad 6-29',12,1);
insert into `frm_sucursal` (`suc_codigo`,`suc_nombre`,`suc_direccion`,`suc_zona`,`dep_codigo`) values (2,'TERMINAL','Terminal Z.4',4,1);

/*Table structure for table `frm_traslado` */

DROP TABLE IF EXISTS `frm_traslado`;

CREATE TABLE `frm_traslado` (
  `tra_id` int(11) NOT NULL,
  `tra_fecha` datetime NOT NULL,
  `tra_usr` char(14) NOT NULL,
  `pro_cod_origen` varchar(20) NOT NULL,
  `pro_cod_destino` varchar(20) NOT NULL,
  `tra_sucursal` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_traslado` */

insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (1,'2013-12-06 00:00:10','hgarcia','ESP001','ESP999',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (2,'2013-12-22 14:14:47','kaag','NIEV002','NIEV006',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (3,'2013-12-23 14:02:10','hgarcia','NIEV004','NIEV007',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (4,'2013-12-23 14:08:54','hgarcia','NIEV005','NIEV010',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (5,'2013-12-23 14:10:28','hgarcia','NIEV001','NIEV008',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (6,'2013-12-23 14:10:42','hgarcia','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (7,'2013-12-23 14:19:12','caguilar','NIEV002','NIEV006',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (8,'2013-12-23 21:48:25','kaag','ESP001','ESP004',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (9,'2013-12-23 21:58:43','kaag','TEX003','TEX004',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (10,'2013-12-23 23:01:22','kaag','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (11,'2013-12-26 07:13:31','caguilar','NIEV002','NIEV006',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (12,'2013-12-26 07:13:51','caguilar','NIEV002','NIEV006',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (13,'2013-12-26 07:15:19','caguilar','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (14,'2013-12-26 07:15:40','caguilar','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (15,'2013-12-26 07:16:01','caguilar','NIEV004','NIEV007',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (16,'2013-12-26 07:16:26','caguilar','TEX003','TEX004',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (17,'2014-01-07 07:30:15','hgarcia','GAL001','GAL002M',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (18,'2014-01-07 07:30:52','hgarcia','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (19,'2014-01-07 07:31:52','hgarcia','NIEV001','NIEV008',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (20,'2014-01-09 22:20:59','caguilar','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (21,'2014-01-14 12:57:03','caguilar','TEX004','TEX001D',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (22,'2014-01-21 19:05:31','hgarcia','COL001','COL002U',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (23,'2014-01-21 19:27:50','kaag','SUA001','SUA003U',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (24,'2014-01-21 19:28:05','kaag','SUA002','SUA004U',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (25,'2014-01-23 08:40:46','hgarcia','ULT003','ULT004M',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (26,'2014-01-23 08:45:40','hgarcia','KLI001','KLI003',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (27,'2014-01-23 08:47:20','hgarcia','KLI002','KLI004',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (28,'2014-01-23 09:35:50','hgarcia','NIEV002','NIEV006',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (29,'2014-01-23 09:36:32','hgarcia','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (30,'2014-01-23 09:37:13','hgarcia','NIEV003','NIEV009',0);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (31,'2014-01-27 00:04:23','kaag','TEX001','TEX001U',1);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (32,'2014-01-27 00:19:15','kaag','TEX003','TEX004',1);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (33,'2014-01-27 00:22:29','kaag','NIEV004','NIEV007',1);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (34,'2014-01-27 00:29:14','kaag','TEX002','TEX002M',1);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (35,'2014-01-27 00:41:00','kaag','GAL001','GAL002M',1);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (36,'2014-01-27 00:45:15','kaag','NIEV003','NIEV009',1);
insert into `frm_traslado` (`tra_id`,`tra_fecha`,`tra_usr`,`pro_cod_origen`,`pro_cod_destino`,`tra_sucursal`) values (37,'2014-01-28 10:50:38','caguilar','ESP001','ESP004',1);

/*Table structure for table `frm_traslado_producto` */

DROP TABLE IF EXISTS `frm_traslado_producto`;

CREATE TABLE `frm_traslado_producto` (
  `trp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trp_usr` char(14) NOT NULL,
  `trp_fecha` datetime NOT NULL,
  `trp_pro_codigo` varchar(20) NOT NULL,
  `trp_suc_origen` int(10) unsigned NOT NULL,
  `trp_suc_destino` int(10) unsigned NOT NULL,
  `trp_cantidad` int(10) unsigned NOT NULL,
  PRIMARY KEY (`trp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `frm_traslado_producto` */

insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (1,'kaag','2014-01-26 16:13:05','ESP001',1,2,0);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (2,'kaag','2014-01-26 16:20:03','NIEV004',1,2,0);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (3,'kaag','2014-01-26 16:21:55','NIEV001',1,2,0);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (4,'kaag','2014-01-26 16:25:15','NIEV003',1,2,0);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (5,'kaag','2014-01-26 16:30:42','ESP005',1,2,9);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (6,'kaag','2014-01-26 16:32:23','BEX002',1,2,6);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (7,'kaag','2014-01-26 16:45:52','BEX003',1,2,5);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (8,'kaag','2014-01-26 16:47:38','BEX001',1,2,1);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (9,'kaag','2014-01-26 16:49:10','TEX003',1,2,9);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (10,'kaag','2014-01-26 16:51:24','ULT002',1,2,4);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (11,'kaag','2014-01-26 16:54:12','ULT001',1,2,4);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (12,'kaag','2014-01-26 16:55:18','ULT003',1,2,2);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (13,'kaag','2014-01-26 17:00:31','ESP002',1,2,16);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (14,'kaag','2014-01-26 17:04:15','KLI001',1,2,7);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (15,'kaag','2014-01-26 17:06:10','KLI002',1,2,4);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (16,'kaag','2014-01-26 17:09:40','TEX001',1,2,8);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (17,'kaag','2014-01-26 17:10:44','ESP003',1,2,12);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (18,'kaag','2014-01-26 17:12:26','POT001',1,2,3);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (19,'kaag','2014-01-26 17:13:27','XTRA001',1,2,6);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (20,'kaag','2014-01-26 17:13:45','XTRA002',1,2,12);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (21,'kaag','2014-01-26 17:16:06','XTRA003',1,2,31);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (22,'kaag','2014-01-29 09:05:03','GAL001',1,2,1);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (23,'kaag','2014-01-29 09:05:06','NIEV001',1,2,3);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (24,'kaag','2014-01-29 09:09:26','ULT001',1,2,2);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (25,'kaag','2014-01-29 09:09:28','ULT002',1,2,1);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (26,'kaag','2014-01-29 09:09:31','BEX001',1,2,1);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (27,'kaag','2014-01-29 09:09:34','BEX002',1,2,1);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (28,'kaag','2014-01-29 09:09:35','BEX003',1,2,1);
insert into `frm_traslado_producto` (`trp_id`,`trp_usr`,`trp_fecha`,`trp_pro_codigo`,`trp_suc_origen`,`trp_suc_destino`,`trp_cantidad`) values (29,'kaag','2014-01-29 09:09:38','SUA001',1,2,1);

/*Table structure for table `frm_usr_rol` */

DROP TABLE IF EXISTS `frm_usr_rol`;

CREATE TABLE `frm_usr_rol` (
  `rol_id` int(10) unsigned NOT NULL,
  `emp_codigo` varchar(20) NOT NULL,
  `usr_fecha_mod` datetime NOT NULL,
  `usr_estado` varchar(45) NOT NULL,
  PRIMARY KEY (`rol_id`,`emp_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_usr_rol` */

insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (0,'1','2013-01-29 17:42:37','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (1,'1','2013-01-18 12:55:33','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (1,'2','2013-11-25 14:24:15','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (1,'3','2013-01-18 00:00:00','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (1,'6','2013-11-27 13:15:38','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (2,'1','2013-01-30 12:21:17','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (2,'2','2013-01-18 16:07:51','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (2,'6','2013-11-25 14:24:53','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (3,'1','2013-01-30 12:22:19','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (3,'3','2013-01-30 12:56:48','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (3,'4','2013-11-25 14:24:32','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (3,'5','2013-11-25 14:24:37','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (3,'6','2013-11-25 14:24:41','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (3,'7','2013-12-19 22:59:05','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (4,'1','2013-11-26 16:22:53','E');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (4,'4','2013-12-07 08:46:29','V');
insert into `frm_usr_rol` (`rol_id`,`emp_codigo`,`usr_fecha_mod`,`usr_estado`) values (4,'6','2013-11-27 13:15:49','V');

/*Table structure for table `frm_ 0` */

DROP TABLE IF EXISTS `frm_vdetalle`;

CREATE TABLE `frm_vdetalle` (
  `vdet_cantidad` int(11) NOT NULL,
  `vdet_descuento` float NOT NULL,
  `vdet_subtotal` float NOT NULL,
  `pro_codigo` varchar(20) NOT NULL,
  `vta_codigo` int(10)  NOT NULL,
  PRIMARY KEY (`pro_codigo`,`vta_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_vdetalle` */

insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ARI001',175);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX001',152);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX001',205);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX002',152);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX003',152);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX003',205);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX003',240);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,196,'BEX003',242);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,94,'BLAN001',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,29,115,'COL002U',168);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,29,115,'COL002U',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,48,'COL002U',175);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,24,120,'COL002U',177);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,20,'COL002U',178);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,8,40,'COL002U',190);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,18,126,'COL002U',192);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,12,60,'COL002U',193);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,8,64,'COL002U',229);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ESP001',1);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,82,'ESP001',5);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,82,'ESP001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,82,'ESP001',8);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,160,'ESP001',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ESP001',44);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ESP001',52);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,90,'ESP001',54);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',66);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',70);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001',86);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',88);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,170,'ESP001',89);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,85,'ESP001',107);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001',113);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001',119);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001',138);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',141);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',143);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,84,'ESP001',145);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',154);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,85,'ESP001',166);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',168);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,6,174,'ESP001',176);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001',187);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',201);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001',207);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001',216);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,84,'ESP001',222);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001',243);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',14);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',19);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,218,'ESP002',20);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,220,'ESP002',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002',56);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002',57);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',63);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',88);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,218,'ESP002',113);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002',138);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002',141);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002',147);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,220,'ESP002',186);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,218,'ESP002',191);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,216,'ESP002',211);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002',217);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003',4);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,112,'ESP003',8);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,56,'ESP003',19);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003',21);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003',62);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,56,'ESP003',63);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,220,'ESP003',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003',72);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,112,'ESP003',88);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003',110);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,112,'ESP003',116);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,220,'ESP003',120);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003',144);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'ESP003',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',168);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',182);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',205);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',208);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,6,110,'ESP003',217);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',240);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',241);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003',243);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,5,45,'ESP004',245);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,73,'ESP005',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,72,'ESP005',200);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,73,'ESP005',201);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,73,'ESP005',208);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',4);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',66);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',70);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',86);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,128,'GAL001',136);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',162);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',167);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',182);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001',213);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,66,'GAL001',231);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,65,'GAL001',237);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,33,'GAL002M',79);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,33,'GAL002M',192);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,33,'GAL002M',232);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,33,'GAL002M',235);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'KLI001',1);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',29);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',59);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',83);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',86);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001',104);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'KLI001',133);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI001',151);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI001',157);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,120,'KLI001',180);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,124,'KLI001',204);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI001',243);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI002',152);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,120,'KLI002',181);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI002',187);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0.5,62,'KLI003',189);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0.5,62,'KLI004',189);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,210,'KLO001',137);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',4);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001',12);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',13);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',14);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',17);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',19);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV001',33);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV001',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001',38);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001',41);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001',42);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',47);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',56);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',63);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001',66);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001',67);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',85);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',92);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',94);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',96);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV001',97);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',104);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',110);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',112);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',113);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',137);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',138);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',140);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',141);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',142);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',143);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,6,234,'NIEV001',144);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',154);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',155);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',156);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001',161);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',163);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001',197);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',203);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',204);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',205);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',209);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',212);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',216);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001',229);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001',238);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001',239);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001',240);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',4);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002',8);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',16);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV002',18);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002',21);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',22);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',33);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV002',43);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002',45);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',47);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',56);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',61);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',98);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002',99);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',104);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002',108);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',110);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',117);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',118);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',119);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',143);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',144);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',153);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV002',155);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',159);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002',163);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002',164);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',166);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',173);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002',174);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',193);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002',203);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002',228);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV002',229);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003',5);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003',6);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV003',12);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003',13);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003',14);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV003',18);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003',21);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV003',34);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV003',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,240,'NIEV003',39);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV003',41);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,238,'NIEV003',43);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',47);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,12,351,'NIEV003',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',72);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',91);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',92);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3.5,117.5,'NIEV003',99);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',108);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',125);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',126);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3.5,117.5,'NIEV003',127);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',128);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',129);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',137);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',148);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,232,'NIEV003',153);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',156);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,232,'NIEV003',159);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',162);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',167);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',192);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',193);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,117,'NIEV003',197);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,117,'NIEV003',218);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3.5,117.5,'NIEV003',221);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3.5,117.5,'NIEV003',224);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,117,'NIEV003',229);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003',237);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,232,'NIEV003',244);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',5);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV004',12);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',13);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004',33);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV004',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV004',36);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,117,'NIEV004',58);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV004',59);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV004',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',61);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',63);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',92);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004',99);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004',113);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',116);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV004',123);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004',127);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',128);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',135);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004',142);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',152);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004',153);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004',159);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004',174);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004',203);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',217);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004',224);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV004',229);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',241);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004',242);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',4);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',6);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',8);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',13);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',22);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',33);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',56);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',62);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',72);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',94);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',118);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',129);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',138);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',140);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',141);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',153);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',156);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',162);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',182);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005',208);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,232,'NIEV005',215);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006',48);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006',49);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006',50);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006',52);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,59,'NIEV006',195);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,59,'NIEV006',233);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV007',51);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV007',80);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,59,'NIEV007',226);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV008',80);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',48);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',52);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,61,'NIEV009',53);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV009',64);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',79);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',80);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',102);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',194);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,59,'NIEV009',195);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,118,'NIEV009',196);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,59,'NIEV009',226);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,59,'NIEV009',233);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009',245);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,85,'POT001',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,176,'POT001',95);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',110);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'POT001',118);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'POT001',139);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'POT001',141);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',152);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',157);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',158);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',160);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001',163);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,90,'POT001',165);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,90,'POT001',166);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,88,'POT001',172);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,88,'POT001',216);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,88,'POT001',217);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,88,'POT001',241);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,88,'POT001',243);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',2);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',23);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',25);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,490,'ROS001',37);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',56);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',61);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001',73);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,99,'ROS001',75);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,20,970,'ROS001',76);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (15,30,1455,'ROS001',81);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001',83);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001',88);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,196,'ROS001',107);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001',108);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001',114);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,100,'ROS001',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,35,'SOL001',16);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,105,'SOL001',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,105,'SOL001',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,35,'SOL002',16);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,70,'SOL002',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,144,'SUA002',170);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,9,135,'SUA002',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1.5,8.5,'SUA003U',175);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,5,55,'SUA003U',192);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0.5,11.5,'SUA004U',175);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,0,72,'SUA004U',192);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'SUA005',179);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,290,'TEX001',9);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001',10);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001',11);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001',21);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001',26);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001',29);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,232,'TEX001',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001',40);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001',59);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,174,'TEX001',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001',66);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,232,'TEX001',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',100);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',103);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001',108);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001',110);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,58,'TEX001',114);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001',115);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',127);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',128);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001',144);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,240,'TEX001',146);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001',148);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',150);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,180,'TEX001',184);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001',185);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',198);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',208);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001',210);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,58,'TEX001',223);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,58,'TEX001',230);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001',241);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,13,'TEX001D',134);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (18,0.06,39,'TEX001U',220);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX002',3);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX002',33);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,61,'TEX002',59);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,122,'TEX002',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002',65);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002',68);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,59,'TEX002',96);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'TEX002',116);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002',127);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002',128);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002',135);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002',139);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002',141);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002',162);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'TEX002',164);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002',166);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002',203);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,58,'TEX002',210);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,58,'TEX002',218);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'TEX002',222);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'TEX002',223);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,31,'TEX002M',226);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,92,'TEX003',15);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003',17);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',19);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003',30);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,12,138,'TEX003',35);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003',40);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003',52);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003',98);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003',100);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003',103);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',133);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,49,'TEX003',135);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',137);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003',192);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003',217);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',234);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003',240);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,26,'TEX004',53);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,25,'TEX004',225);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',1);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT001',14);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT001',19);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001',66);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',75);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',77);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',100);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,264,'ULT001',180);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001',187);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,89,'ULT001',197);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT001',225);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',1);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT002',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT002',11);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT002',19);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',55);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT002',62);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT002',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',84);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',100);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',103);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',111);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,82,'ULT002',144);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',158);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,89,'ULT002',197);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT002',201);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT002',206);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT002',214);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT002',234);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT002',240);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',60);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003',69);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003',71);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',105);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',110);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',111);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',122);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',124);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',149);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',168);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',171);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,176,'ULT003',180);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',182);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003',187);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,89,'ULT003',197);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT003',202);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,88,'ULT003',236);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,43.5,'ULT004M',188);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'ULT004M',219);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',4);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',5);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',6);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001',21);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001',24);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',26);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,0,270,'XTRA001',27);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,180,'XTRA001',28);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',29);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001',31);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,225,'XTRA001',32);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',47);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001',74);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA001',75);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA001',76);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA001',77);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,5,225,'XTRA001',78);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA001',85);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,180,'XTRA001',89);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,3,273,'XTRA001',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA001',121);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA001',124);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,15,135,'XTRA001',128);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (14,0,700,'XTRA001',130);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA001',132);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA001',133);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA001',148);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA001',168);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA001',169);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA001',182);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,6,180,'XTRA001',183);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA001',201);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'XTRA001',224);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'XTRA001',225);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'XTRA001',227);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'XTRA001',233);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002',5);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002',6);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002',7);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002',21);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002',24);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002',26);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,0,270,'XTRA002',27);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002',28);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002',31);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,225,'XTRA002',32);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002',46);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA002',76);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA002',83);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,180,'XTRA002',85);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA002',87);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA002',88);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,90,'XTRA002',89);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,3,273,'XTRA002',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA002',94);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA002',102);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA002',106);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,90,'XTRA002',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,90,'XTRA002',128);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,0,500,'XTRA002',130);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA002',132);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA002',169);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA002',199);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA002',201);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'XTRA002',227);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA003',74);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA003',76);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA003',77);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,5,225,'XTRA003',82);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (7,7,315,'XTRA003',83);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA003',85);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (7,7,315,'XTRA003',87);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,92,'XTRA003',88);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,90,'XTRA003',89);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003',90);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,5,455,'XTRA003',93);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003',94);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003',101);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003',102);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,15,135,'XTRA003',109);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,150,'XTRA003',121);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,150,'XTRA003',129);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (14,0,700,'XTRA003',130);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA003',131);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA003',132);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,0,500,'XTRA003',133);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA003',134);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA003',148);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,6,180,'XTRA003',168);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA003',169);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA003',182);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,12,360,'XTRA003',183);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA003',218);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'XTRA003',227);
insert into `frm_vdetalle` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,63,'XTRA003',231);

/*Table structure for table `frm_vdetallec` */

DROP TABLE IF EXISTS `frm_vdetallec`;

CREATE TABLE `frm_vdetallec` (
  `vdet_cantidad` int(11) NOT NULL,
  `vdet_descuento` float NOT NULL,
  `vdet_subtotal` float NOT NULL,
  `pro_codigo` varchar(20) NOT NULL,
  `vta_codigo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_vdetallec` */

insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ARI001','175');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX001','152');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX002','152');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'BEX003','152');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,94,'BLAN001','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,29,115,'COL002U','168');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,29,115,'COL002U','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,48,'COL002U','175');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,24,120,'COL002U','177');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,20,'COL002U','178');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,8,40,'COL002U','190');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (12,18,126,'COL002U','192');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,12,60,'COL002U','193');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ESP001','1');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,85,'ESP001','107');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001','113');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001','119');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001','138');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','141');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','143');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,84,'ESP001','145');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','154');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,85,'ESP001','166');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','168');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,6,174,'ESP001','176');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001','187');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,160,'ESP001','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ESP001','44');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,82,'ESP001','5');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,85,'ESP001','52');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,90,'ESP001','54');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','66');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,82,'ESP001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','70');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,82,'ESP001','8');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,16,164,'ESP001','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,10,80,'ESP001','86');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,8,82,'ESP001','88');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,170,'ESP001','89');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,218,'ESP002','113');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002','138');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','14');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002','141');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002','147');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,220,'ESP002','186');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','19');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,218,'ESP002','191');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,218,'ESP002','20');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,220,'ESP002','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002','56');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,109,'ESP002','57');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','63');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','88');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,110,'ESP002','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003','110');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,112,'ESP003','116');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,220,'ESP003','120');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003','144');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'ESP003','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003','168');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,56,'ESP003','182');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,56,'ESP003','19');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003','21');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003','4');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,110,'ESP003','62');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,56,'ESP003','63');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,220,'ESP003','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,55,'ESP003','72');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,112,'ESP003','8');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,112,'ESP003','88');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,73,'ESP005','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,128,'GAL001','136');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','162');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','167');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','182');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','4');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','66');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','70');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,65,'GAL001','86');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,33,'GAL002M','192');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,33,'GAL002M','79');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'KLI001','1');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','104');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'KLI001','133');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI001','151');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI001','157');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,120,'KLI001','180');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','29');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','59');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','83');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'KLI001','86');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI002','152');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,120,'KLI002','181');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,125,'KLI002','187');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0.5,62,'KLI003','189');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0.5,62,'KLI004','189');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,210,'KLO001','137');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','104');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','110');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','112');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','113');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001','12');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','13');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','137');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','138');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','14');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','140');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','141');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','142');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','143');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,6,234,'NIEV001','144');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','154');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','155');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','156');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001','161');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','163');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','17');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','19');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001','197');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV001','33');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV001','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001','38');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','4');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001','41');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001','42');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','47');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV001','56');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','63');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV001','66');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV001','67');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','85');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','92');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','94');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV001','96');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV001','97');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','104');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002','108');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','110');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','117');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','118');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','119');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','143');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','144');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','153');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV002','155');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','159');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','16');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002','163');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002','164');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','166');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','173');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002','174');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV002','18');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','193');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002','21');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','22');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','33');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','4');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV002','43');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002','45');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','47');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV002','56');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','61');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,236,'NIEV002','8');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV002','98');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV002','99');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','108');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV003','12');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','125');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','126');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3.5,117.5,'NIEV003','127');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','128');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','129');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003','13');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','137');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003','14');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','148');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,232,'NIEV003','153');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','156');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,232,'NIEV003','159');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','162');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','167');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV003','18');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','192');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','193');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,117,'NIEV003','197');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003','21');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV003','34');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV003','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,240,'NIEV003','39');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,120,'NIEV003','41');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,238,'NIEV003','43');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','47');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003','5');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003','6');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,12,351,'NIEV003','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV003','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','72');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','91');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV003','92');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3.5,117.5,'NIEV003','99');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004','113');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','116');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,117,'NIEV004','12');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV004','123');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004','127');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','128');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','13');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','135');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004','142');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','152');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004','153');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004','159');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004','174');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,116,'NIEV004','33');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,232,'NIEV004','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,119,'NIEV004','36');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','5');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,4,117,'NIEV004','58');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV004','59');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,118,'NIEV004','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','61');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','63');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','92');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,118,'NIEV004','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2.5,117.5,'NIEV004','99');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','118');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','129');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','13');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','138');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','140');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','141');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','153');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','156');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','162');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','182');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','22');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','33');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','4');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','56');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','6');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','62');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','72');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','8');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,234,'NIEV005','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,5,235,'NIEV005','94');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,59,'NIEV006','195');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006','48');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006','49');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006','50');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV006','52');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV007','51');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV007','80');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV008','80');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009','102');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009','194');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,59,'NIEV009','195');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,118,'NIEV009','196');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009','48');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009','52');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,61,'NIEV009','53');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'NIEV009','64');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009','79');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,60,'NIEV009','80');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','110');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'POT001','118');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'POT001','139');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'POT001','141');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','152');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','157');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','158');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','160');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','163');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,90,'POT001','165');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,90,'POT001','166');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,88,'POT001','172');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,85,'POT001','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'POT001','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,176,'POT001','95');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,196,'ROS001','107');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001','108');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001','114');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,100,'ROS001','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','2');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','23');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','25');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,490,'ROS001','37');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','56');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','61');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,98,'ROS001','73');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,99,'ROS001','75');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,20,970,'ROS001','76');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (15,30,1455,'ROS001','81');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001','83');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001','88');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,98,'ROS001','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,105,'SOL001','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,35,'SOL001','16');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,105,'SOL001','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,70,'SOL002','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,35,'SOL002','16');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,144,'SUA002','170');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,9,135,'SUA002','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1.5,8.5,'SUA003U','175');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,5,55,'SUA003U','192');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0.5,11.5,'SUA004U','175');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,0,72,'SUA004U','192');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'SUA005','179');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001','10');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001','100');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001','103');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001','108');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001','11');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001','110');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,58,'TEX001','114');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001','115');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001','127');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001','128');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,116,'TEX001','144');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,240,'TEX001','146');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001','148');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001','150');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,180,'TEX001','184');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX001','185');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX001','198');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001','21');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001','26');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001','29');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,232,'TEX001','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001','40');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001','59');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,174,'TEX001','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001','66');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,58,'TEX001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,232,'TEX001','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,116,'TEX001','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,290,'TEX001','9');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,13,'TEX001D','134');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'TEX002','116');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002','127');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002','128');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002','135');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002','139');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002','141');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'TEX002','162');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,61,'TEX002','164');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002','166');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,60,'TEX002','3');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,120,'TEX002','33');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,61,'TEX002','59');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,122,'TEX002','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002','65');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,62,'TEX002','68');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,3,59,'TEX002','96');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003','100');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003','103');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003','133');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,49,'TEX003','135');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003','137');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,8,92,'TEX003','15');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003','17');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,48,'TEX003','19');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003','192');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,96,'TEX003','30');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,12,138,'TEX003','35');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003','40');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003','52');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'TEX003','98');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,26,'TEX004','53');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','1');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','100');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT001','14');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,264,'ULT001','180');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','187');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT001','19');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,89,'ULT001','197');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001','66');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT001','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','75');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT001','77');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','1');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','100');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','103');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT002','11');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','111');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,6,82,'ULT002','144');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','158');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,86,'ULT002','19');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,89,'ULT002','197');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','55');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT002','62');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT002','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT002','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT002','84');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','105');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','110');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','111');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','122');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','124');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','149');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','168');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','171');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,176,'ULT003','180');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','182');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','187');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,89,'ULT003','197');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,88,'ULT003','60');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003','69');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,87,'ULT003','71');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,43.5,'ULT004M','188');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA001','121');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA001','124');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,15,135,'XTRA001','128');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (14,0,700,'XTRA001','130');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA001','132');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA001','133');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA001','148');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA001','168');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA001','169');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA001','182');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,6,180,'XTRA001','183');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001','21');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001','24');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','26');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,0,270,'XTRA001','27');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,0,180,'XTRA001','28');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','29');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001','31');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,225,'XTRA001','32');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','4');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','47');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','5');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','6');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA001','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA001','74');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA001','75');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA001','76');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA001','77');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,5,225,'XTRA001','78');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA001','85');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,180,'XTRA001','89');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,3,273,'XTRA001','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA002','102');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA002','106');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,90,'XTRA002','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,10,90,'XTRA002','128');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,0,500,'XTRA002','130');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA002','132');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA002','169');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA002','199');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002','21');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002','24');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002','26');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,0,270,'XTRA002','27');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002','28');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002','31');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,225,'XTRA002','32');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002','46');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,45,'XTRA002','5');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002','6');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,90,'XTRA002','7');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA002','76');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA002','83');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (4,4,180,'XTRA002','85');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA002','87');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA002','88');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,90,'XTRA002','89');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,3,273,'XTRA002','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA002','94');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003','101');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003','102');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,15,135,'XTRA003','109');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,150,'XTRA003','121');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,0,150,'XTRA003','129');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (14,0,700,'XTRA003','130');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA003','131');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,0,250,'XTRA003','132');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,0,500,'XTRA003','133');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,50,'XTRA003','134');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA003','148');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,6,180,'XTRA003','168');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,2,60,'XTRA003','169');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,4,120,'XTRA003','182');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (6,12,360,'XTRA003','183');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA003','74');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA003','76');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,1,45,'XTRA003','77');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (5,5,225,'XTRA003','82');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (7,7,315,'XTRA003','83');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (3,3,135,'XTRA003','85');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (7,7,315,'XTRA003','87');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,0,92,'XTRA003','88');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (2,2,90,'XTRA003','89');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003','90');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (10,5,455,'XTRA003','93');
insert into `frm_vdetallec` (`vdet_cantidad`,`vdet_descuento`,`vdet_subtotal`,`pro_codigo`,`vta_codigo`) values (1,0,46,'XTRA003','94');

/*Table structure for table `frm_venta` */

DROP TABLE IF EXISTS `frm_venta`;

CREATE TABLE `frm_venta` (
  `vta_codigo` int(10) NOT NULL,
  `vta_fecha` datetime NOT NULL,
  `vta_total` float NOT NULL,
  `emp_codigo` int(11) NOT NULL,
  `suc_codigo` int(11) NOT NULL,
  `cte_nit` varchar(20) NOT NULL,
  `vta_estado` char(1) NOT NULL,
  PRIMARY KEY (`vta_codigo`),
  KEY `FK_frm_venta_1` (`cte_nit`),
  KEY `FK_frm_venta_2` (`suc_codigo`),
  KEY `FK_frm_venta_3` (`emp_codigo`),
  CONSTRAINT `FK_frm_venta_1` FOREIGN KEY (`cte_nit`) REFERENCES `frm_cliente` (`cte_nit`),
  CONSTRAINT `FK_frm_venta_2` FOREIGN KEY (`suc_codigo`) REFERENCES `frm_sucursal` (`suc_codigo`) ON DELETE CASCADE,
  CONSTRAINT `FK_frm_venta_3` FOREIGN KEY (`emp_codigo`) REFERENCES `frm_empleado` (`emp_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_venta` */

insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (1,'2013-12-24 10:46:51',381,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (2,'2013-12-24 10:47:26',98,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (3,'2013-12-24 10:47:52',60,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (4,'2013-12-24 10:50:35',636,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (5,'2013-12-24 10:52:27',408,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (6,'2013-12-24 10:54:31',488,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (7,'2013-12-24 11:01:38',1259,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (8,'2013-12-24 11:03:10',664,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (9,'2013-12-24 11:04:39',290,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (10,'2013-12-24 11:05:12',116,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (11,'2013-12-24 11:05:48',144,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (12,'2013-12-24 11:06:44',351,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (13,'2013-12-24 11:11:30',588,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (14,'2013-12-24 11:13:17',432,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (15,'2013-12-24 11:13:47',92,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (16,'2013-12-24 11:14:40',188,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (17,'2013-12-24 11:15:42',214,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (18,'2013-12-24 11:17:22',234,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (19,'2013-12-24 11:21:17',504,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (20,'2013-12-24 11:22:15',218,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (21,'2013-12-24 11:24:38',660,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (22,'2013-12-24 11:25:19',353,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (23,'2013-12-24 11:25:36',98,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (24,'2013-12-24 11:26:07',135,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (25,'2013-12-24 11:26:25',98,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (26,'2013-12-24 11:27:04',148,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (27,'2013-12-24 11:27:35',540,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (28,'2013-12-24 11:28:11',270,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (29,'2013-12-24 11:29:08',219,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (30,'2013-12-24 12:01:11',842,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (31,'2013-12-24 12:01:42',180,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (32,'2013-12-24 12:02:29',450,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (33,'2013-12-24 12:04:30',819,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (34,'2013-12-24 12:05:21',117,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (35,'2013-12-24 12:09:18',1446,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (36,'2013-12-24 12:25:46',119,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (37,'2013-12-24 12:26:18',490,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (38,'2013-12-24 12:26:55',120,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (39,'2013-12-24 12:27:26',240,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (40,'2013-12-24 12:29:08',108,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (41,'2013-12-24 12:29:57',240,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (42,'2013-12-24 12:30:16',120,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (43,'2013-12-24 12:32:11',357,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (44,'2013-12-24 12:32:31',85,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (45,'2013-12-24 12:33:00',117.5,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (46,'2013-12-24 12:52:17',847,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (47,'2013-12-24 12:55:08',399,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (48,'2013-12-26 07:17:36',120,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (49,'2013-12-26 07:18:15',60,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (50,'2013-12-26 07:18:41',60,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (51,'2013-12-26 07:19:11',60,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (52,'2013-12-26 07:21:13',255,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (53,'2013-12-26 07:25:12',87,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (54,'2013-12-26 17:36:12',90,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (55,'2013-12-28 08:11:20',88,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (56,'2013-12-28 08:13:34',673,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (57,'2013-12-28 08:14:09',109,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (58,'2013-12-28 08:15:36',117,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (59,'2013-12-28 08:19:55',353,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (60,'2013-12-28 08:24:48',874,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (61,'2013-12-28 08:28:57',334,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (62,'2013-12-28 08:32:27',432,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (63,'2013-12-28 08:36:41',402,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (64,'2013-12-28 08:40:50',60,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (65,'2013-12-28 08:43:42',62,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (66,'2013-12-28 08:48:36',467,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (67,'2013-12-28 13:07:32',120,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (68,'2013-12-28 13:08:04',62,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (69,'2013-12-28 13:17:29',990,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (70,'2013-12-28 13:19:11',147,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (71,'2013-12-30 14:31:11',1184,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (72,'2013-12-30 14:32:34',408,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (73,'2013-12-30 14:32:56',98,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (74,'2014-01-04 08:40:15',90,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (75,'2014-01-07 07:16:21',233,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (76,'2014-01-07 07:20:19',1195,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (77,'2014-01-07 07:21:27',178,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (78,'2014-01-07 07:22:11',225,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (79,'2014-01-07 07:40:01',93,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (80,'2014-01-07 07:41:28',180,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (81,'2014-01-07 10:11:50',1455,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (82,'2014-01-07 19:02:16',955,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (83,'2014-01-07 19:03:52',664,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (84,'2014-01-07 19:04:17',88,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (85,'2014-01-07 19:08:46',568,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (86,'2014-01-07 19:10:56',261,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (87,'2014-01-07 19:11:40',360,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (88,'2014-01-07 19:14:45',540,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (89,'2014-01-07 21:10:17',530,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (90,'2014-01-07 21:10:46',46,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (91,'2014-01-07 21:12:02',118,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (92,'2014-01-08 15:23:34',354,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (93,'2014-01-08 15:32:11',1649,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (94,'2014-01-08 15:33:39',445,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (95,'2014-01-08 15:34:05',176,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (96,'2014-01-08 15:34:54',177,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (97,'2014-01-09 20:36:17',119,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (98,'2014-01-09 20:37:58',168,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (99,'2014-01-09 20:43:12',352.5,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (100,'2014-01-09 22:17:29',286,7,1,'000000','X');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (101,'2014-01-09 22:18:17',46,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (102,'2014-01-09 22:23:18',152,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (103,'2014-01-09 22:56:19',198,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (104,'2014-01-10 10:43:47',352,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (105,'2014-01-10 10:44:48',88,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (106,'2014-01-10 10:49:15',50,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (107,'2014-01-10 10:50:58',281,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (108,'2014-01-10 10:53:55',568,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (109,'2014-01-10 10:59:09',1248,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (110,'2014-01-10 11:01:16',638,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (111,'2014-01-10 11:02:37',176,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (112,'2014-01-10 20:45:50',116,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (113,'2014-01-10 20:48:21',530,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (114,'2014-01-10 20:49:18',156,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (115,'2014-01-10 20:50:07',116,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (116,'2014-01-10 20:51:57',350,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (117,'2014-01-10 20:52:23',118,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (118,'2014-01-12 18:10:48',437,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (119,'2014-01-12 18:11:44',196,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (120,'2014-01-12 18:12:27',220,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (121,'2014-01-12 18:13:30',200,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (122,'2014-01-12 18:16:47',770,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (123,'2014-01-12 18:19:52',119,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (124,'2014-01-12 18:22:43',138,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (125,'2014-01-12 18:23:22',118,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (126,'2014-01-12 18:23:55',118,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (127,'2014-01-12 18:26:59',357,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (128,'2014-01-12 18:29:44',583,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (129,'2014-01-14 12:38:15',502,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (130,'2014-01-14 12:39:24',1900,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (131,'2014-01-14 12:39:48',250,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (132,'2014-01-14 12:40:28',750,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (133,'2014-01-14 12:41:51',916,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (134,'2014-01-14 12:57:49',63,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (135,'2014-01-15 08:55:49',229,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (136,'2014-01-15 08:56:29',128,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (137,'2014-01-15 09:10:30',494,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (138,'2014-01-15 20:43:21',539,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (139,'2014-01-15 20:44:39',147,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (140,'2014-01-15 20:45:36',350,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (141,'2014-01-15 20:48:04',688,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (142,'2014-01-15 20:50:37',232,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (143,'2014-01-15 20:53:36',318,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (144,'2014-01-15 21:32:25',776,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (145,'2014-01-15 21:33:19',84,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (146,'2014-01-21 16:05:09',240,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (147,'2014-01-21 16:06:04',109,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (148,'2014-01-21 16:12:14',478,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (149,'2014-01-21 17:38:05',738,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (150,'2014-01-21 17:38:27',60,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (151,'2014-01-21 17:39:31',125,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (152,'2014-01-21 17:40:59',625,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (153,'2014-01-21 17:44:00',698,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (154,'2014-01-21 17:44:49',200,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (155,'2014-01-21 17:45:36',348,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (156,'2014-01-21 17:47:22',470,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (157,'2014-01-21 17:48:30',213,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (158,'2014-01-21 17:49:02',176,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (159,'2014-01-21 17:53:19',464,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (160,'2014-01-21 17:59:10',88,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (161,'2014-01-21 17:59:31',117,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (162,'2014-01-21 18:01:02',477,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (163,'2014-01-21 18:02:05',442,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (164,'2014-01-21 18:06:15',178.5,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (165,'2014-01-21 18:08:09',90,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (166,'2014-01-21 18:09:16',355,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (167,'2014-01-21 18:09:50',183,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (168,'2014-01-21 19:40:33',641,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (169,'2014-01-21 19:41:51',180,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (170,'2014-01-21 19:42:14',144,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (171,'2014-01-21 19:46:26',807,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (172,'2014-01-21 19:47:35',88,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (173,'2014-01-21 19:48:01',118,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (174,'2014-01-21 19:48:48',235,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (175,'2014-01-21 19:58:06',153,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (176,'2014-01-21 19:58:32',174,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (177,'2014-01-21 19:59:11',120,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (178,'2014-01-21 19:59:36',20,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (179,'2014-01-21 19:59:53',60,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (180,'2014-01-21 20:00:59',560,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (181,'2014-01-21 20:01:22',120,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (182,'2014-01-22 11:56:55',623,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (183,'2014-01-22 11:58:33',540,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (184,'2014-01-22 11:59:10',180,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (185,'2014-01-22 11:59:33',120,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (186,'2014-01-22 12:00:29',220,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (187,'2014-01-23 08:34:20',465,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (188,'2014-01-23 08:41:26',43.5,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (189,'2014-01-23 08:48:25',124,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (190,'2014-01-23 09:14:10',40,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (191,'2014-01-23 09:33:45',218,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (192,'2014-01-23 09:41:20',454,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (193,'2014-01-23 09:42:26',296,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (194,'2014-01-23 09:42:49',60,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (195,'2014-01-23 09:43:40',118,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (196,'2014-01-23 09:47:16',118,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (197,'2014-01-23 16:38:12',501,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (198,'2014-01-23 16:38:38',60,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (199,'2014-01-23 16:41:40',60,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (200,'2014-01-26 22:19:39',72,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (201,'2014-01-26 22:30:55',423,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (202,'2014-01-26 22:32:13',88,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (203,'2014-01-26 22:36:06',408,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (204,'2014-01-26 22:38:12',240,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (205,'2014-01-26 22:41:26',370,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (206,'2014-01-26 22:44:11',88,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (207,'2014-01-26 22:47:32',80,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (208,'2014-01-26 22:54:28',423,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (209,'2014-01-26 22:55:02',116,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (210,'2014-01-26 22:56:21',118,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (211,'2014-01-26 22:58:04',216,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (212,'2014-01-26 22:58:43',118,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (213,'2014-01-26 22:59:33',65,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (214,'2014-01-26 23:00:05',88,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (215,'2014-01-26 23:01:36',232,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (216,'2014-01-26 23:08:04',286,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (217,'2014-01-26 23:11:25',522,5,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (218,'2014-01-26 23:14:26',235,1,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (219,'2014-01-26 23:53:00',45,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (220,'2014-01-27 00:05:48',39,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (221,'2014-01-27 00:07:58',117.5,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (222,'2014-01-27 00:10:11',145,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (223,'2014-01-27 00:12:03',119,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (224,'2014-01-27 00:16:21',296,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (225,'2014-01-27 00:19:50',175,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (226,'2014-01-27 00:32:03',149,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (227,'2014-01-27 00:33:21',183,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (228,'2014-01-27 00:34:03',118,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (229,'2014-01-27 00:37:03',532,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (230,'2014-01-27 00:37:38',58,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (231,'2014-01-27 00:39:58',129,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (232,'2014-01-27 00:41:27',33,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (233,'2014-01-27 00:45:55',183,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (234,'2014-01-27 00:47:30',136,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (235,'2014-01-27 00:48:14',33,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (236,'2014-01-27 00:48:58',88,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (237,'2014-01-27 00:50:23',183,7,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (238,'2014-01-28 10:33:40',117,5,2,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (239,'2014-01-28 10:34:36',116,5,2,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (240,'2014-01-28 10:36:54',408,5,2,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (241,'2014-01-28 10:39:25',382,5,2,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (242,'2014-01-28 10:40:41',314,5,2,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (243,'2014-01-28 10:43:49',351,5,2,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (244,'2014-01-28 10:46:39',232,3,1,'000000','A');
insert into `frm_venta` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values (245,'2014-01-28 10:56:59',105,7,1,'000000','A');

/*Table structure for table `frm_ventac` */

DROP TABLE IF EXISTS `frm_ventac`;

CREATE TABLE `frm_ventac` (
  `vta_codigo` varchar(30) NOT NULL,
  `vta_fecha` datetime NOT NULL,
  `vta_total` float NOT NULL,
  `emp_codigo` int(11) NOT NULL,
  `suc_codigo` int(11) NOT NULL,
  `cte_nit` varchar(20) NOT NULL,
  `vta_estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frm_ventac` */

insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('1','2013-12-24 10:46:51',381,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('10','2013-12-24 11:05:12',116,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('100','2014-01-09 22:17:29',286,7,1,'000000','X');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('101','2014-01-09 22:18:17',46,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('102','2014-01-09 22:23:18',152,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('103','2014-01-09 22:56:19',198,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('104','2014-01-10 10:43:47',352,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('105','2014-01-10 10:44:48',88,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('106','2014-01-10 10:49:15',50,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('107','2014-01-10 10:50:58',281,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('108','2014-01-10 10:53:55',568,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('109','2014-01-10 10:59:09',1248,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('11','2013-12-24 11:05:48',144,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('110','2014-01-10 11:01:16',638,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('111','2014-01-10 11:02:37',176,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('112','2014-01-10 20:45:50',116,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('113','2014-01-10 20:48:21',530,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('114','2014-01-10 20:49:18',156,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('115','2014-01-10 20:50:07',116,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('116','2014-01-10 20:51:57',350,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('117','2014-01-10 20:52:23',118,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('118','2014-01-12 18:10:48',437,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('119','2014-01-12 18:11:44',196,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('12','2013-12-24 11:06:44',351,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('120','2014-01-12 18:12:27',220,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('121','2014-01-12 18:13:30',200,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('122','2014-01-12 18:16:47',770,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('123','2014-01-12 18:19:52',119,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('124','2014-01-12 18:22:43',138,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('125','2014-01-12 18:23:22',118,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('126','2014-01-12 18:23:55',118,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('127','2014-01-12 18:26:59',357,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('128','2014-01-12 18:29:44',583,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('129','2014-01-14 12:38:15',502,5,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('13','2013-12-24 11:11:30',588,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('130','2014-01-14 12:39:24',1900,5,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('131','2014-01-14 12:39:48',250,5,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('132','2014-01-14 12:40:28',750,5,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('133','2014-01-14 12:41:51',916,5,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('134','2014-01-14 12:57:49',63,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('135','2014-01-15 08:55:49',229,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('136','2014-01-15 08:56:29',128,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('137','2014-01-15 09:10:30',494,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('138','2014-01-15 20:43:21',539,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('139','2014-01-15 20:44:39',147,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('14','2013-12-24 11:13:17',432,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('140','2014-01-15 20:45:36',350,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('141','2014-01-15 20:48:04',688,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('142','2014-01-15 20:50:37',232,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('143','2014-01-15 20:53:36',318,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('144','2014-01-15 21:32:25',776,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('145','2014-01-15 21:33:19',84,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('146','2014-01-21 16:05:09',240,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('147','2014-01-21 16:06:04',109,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('148','2014-01-21 16:12:14',478,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('149','2014-01-21 17:38:05',738,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('15','2013-12-24 11:13:47',92,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('150','2014-01-21 17:38:27',60,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('151','2014-01-21 17:39:31',125,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('152','2014-01-21 17:40:59',625,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('153','2014-01-21 17:44:00',698,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('154','2014-01-21 17:44:49',200,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('155','2014-01-21 17:45:36',348,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('156','2014-01-21 17:47:22',470,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('157','2014-01-21 17:48:30',213,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('158','2014-01-21 17:49:02',176,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('159','2014-01-21 17:53:19',464,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('16','2013-12-24 11:14:40',188,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('160','2014-01-21 17:59:10',88,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('161','2014-01-21 17:59:31',117,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('162','2014-01-21 18:01:02',477,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('163','2014-01-21 18:02:05',442,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('164','2014-01-21 18:06:15',178.5,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('165','2014-01-21 18:08:09',90,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('166','2014-01-21 18:09:16',355,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('167','2014-01-21 18:09:50',183,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('168','2014-01-21 19:40:33',641,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('169','2014-01-21 19:41:51',180,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('17','2013-12-24 11:15:42',214,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('170','2014-01-21 19:42:14',144,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('171','2014-01-21 19:46:26',807,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('172','2014-01-21 19:47:35',88,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('173','2014-01-21 19:48:01',118,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('174','2014-01-21 19:48:48',235,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('175','2014-01-21 19:58:06',153,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('176','2014-01-21 19:58:32',174,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('177','2014-01-21 19:59:11',120,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('178','2014-01-21 19:59:36',20,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('179','2014-01-21 19:59:53',60,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('18','2013-12-24 11:17:22',234,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('180','2014-01-21 20:00:59',560,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('181','2014-01-21 20:01:22',120,1,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('182','2014-01-22 11:56:55',623,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('183','2014-01-22 11:58:33',540,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('184','2014-01-22 11:59:10',180,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('185','2014-01-22 11:59:33',120,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('186','2014-01-22 12:00:29',220,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('187','2014-01-23 08:34:20',465,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('188','2014-01-23 08:41:26',43.5,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('189','2014-01-23 08:48:25',124,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('19','2013-12-24 11:21:17',504,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('190','2014-01-23 09:14:10',40,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('191','2014-01-23 09:33:45',218,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('192','2014-01-23 09:41:20',454,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('193','2014-01-23 09:42:26',296,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('194','2014-01-23 09:42:49',60,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('195','2014-01-23 09:43:40',118,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('196','2014-01-23 09:47:16',118,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('197','2014-01-23 16:38:12',501,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('198','2014-01-23 16:38:38',60,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('199','2014-01-23 16:41:40',60,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('2','2013-12-24 10:47:26',98,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('20','2013-12-24 11:22:15',218,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('21','2013-12-24 11:24:38',660,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('22','2013-12-24 11:25:19',353,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('23','2013-12-24 11:25:36',98,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('24','2013-12-24 11:26:07',135,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('25','2013-12-24 11:26:25',98,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('26','2013-12-24 11:27:04',148,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('27','2013-12-24 11:27:35',540,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('28','2013-12-24 11:28:11',270,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('29','2013-12-24 11:29:08',219,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('3','2013-12-24 10:47:52',60,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('30','2013-12-24 12:01:11',842,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('31','2013-12-24 12:01:42',180,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('32','2013-12-24 12:02:29',450,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('33','2013-12-24 12:04:30',819,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('34','2013-12-24 12:05:21',117,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('35','2013-12-24 12:09:18',1446,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('36','2013-12-24 12:25:46',119,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('37','2013-12-24 12:26:18',490,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('38','2013-12-24 12:26:55',120,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('39','2013-12-24 12:27:26',240,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('4','2013-12-24 10:50:35',636,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('40','2013-12-24 12:29:08',108,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('41','2013-12-24 12:29:57',240,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('42','2013-12-24 12:30:16',120,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('43','2013-12-24 12:32:11',357,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('44','2013-12-24 12:32:31',85,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('45','2013-12-24 12:33:00',117.5,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('46','2013-12-24 12:52:17',847,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('47','2013-12-24 12:55:08',399,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('48','2013-12-26 07:17:36',120,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('49','2013-12-26 07:18:15',60,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('5','2013-12-24 10:52:27',408,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('50','2013-12-26 07:18:41',60,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('51','2013-12-26 07:19:11',60,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('52','2013-12-26 07:21:13',255,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('53','2013-12-26 07:25:12',87,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('54','2013-12-26 17:36:12',90,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('55','2013-12-28 08:11:20',88,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('56','2013-12-28 08:13:34',673,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('57','2013-12-28 08:14:09',109,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('58','2013-12-28 08:15:36',117,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('59','2013-12-28 08:19:55',353,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('6','2013-12-24 10:54:31',488,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('60','2013-12-28 08:24:48',874,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('61','2013-12-28 08:28:57',334,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('62','2013-12-28 08:32:27',432,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('63','2013-12-28 08:36:41',402,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('64','2013-12-28 08:40:50',60,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('65','2013-12-28 08:43:42',62,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('66','2013-12-28 08:48:36',467,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('67','2013-12-28 13:07:32',120,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('68','2013-12-28 13:08:04',62,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('69','2013-12-28 13:17:29',990,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('7','2013-12-24 11:01:38',1259,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('70','2013-12-28 13:19:11',147,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('71','2013-12-30 14:31:11',1184,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('72','2013-12-30 14:32:34',408,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('73','2013-12-30 14:32:56',98,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('74','2014-01-04 08:40:15',90,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('75','2014-01-07 07:16:21',233,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('76','2014-01-07 07:20:19',1195,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('77','2014-01-07 07:21:27',178,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('78','2014-01-07 07:22:11',225,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('79','2014-01-07 07:40:01',93,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('8','2013-12-24 11:03:10',664,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('80','2014-01-07 07:41:28',180,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('81','2014-01-07 10:11:50',1455,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('82','2014-01-07 19:02:16',955,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('83','2014-01-07 19:03:52',664,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('84','2014-01-07 19:04:17',88,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('85','2014-01-07 19:08:46',568,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('86','2014-01-07 19:10:56',261,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('87','2014-01-07 19:11:40',360,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('88','2014-01-07 19:14:45',540,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('89','2014-01-07 21:10:17',530,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('9','2013-12-24 11:04:39',290,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('90','2014-01-07 21:10:46',46,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('91','2014-01-07 21:12:02',118,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('92','2014-01-08 15:23:34',354,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('93','2014-01-08 15:32:11',1649,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('94','2014-01-08 15:33:39',445,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('95','2014-01-08 15:34:05',176,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('96','2014-01-08 15:34:54',177,3,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('97','2014-01-09 20:36:17',119,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('98','2014-01-09 20:37:58',168,7,1,'000000','A');
insert into `frm_ventac` (`vta_codigo`,`vta_fecha`,`vta_total`,`emp_codigo`,`suc_codigo`,`cte_nit`,`vta_estado`) values ('99','2014-01-09 20:43:12',352.5,7,1,'000000','A');

/* Procedure structure for procedure `sp_asociacion` */

drop procedure if exists `sp_asociacion`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_asociacion`(IN i_opcion integer,IN i_rol integer,IN i_menu integer,IN i_usuario char(14),IN i_empleado integer,IN i_submenu integer)
BEGINIF (i_opcion = 1) THENselect mnu_nombre as MENU_PRINCIPAL, sub_nombre as SUB_MENU from frm_submenu sb, frm_menu m, frm_submenu_rol rmwhere sb.mnu_id = m.mnu_idand   sb.sub_id = rm.sub_idand   rol_id = i_rol;END IF;IF (i_opcion = 2) THENselect sub_id, sub_nombre from frm_submenuwhere    mnu_id = i_menu;END IF;IF (i_opcion = 3) THENinsert into frm_submenu_rol values(i_submenu, i_rol);END IF;IF (i_opcion = 4) THENselect emp_codigo from frm_empleado where emp_usr = i_usuario into @w_emp_codigo;if exists(select 1 from frm_usr_rol where rol_id = i_rol and emp_codigo =  @w_emp_codigo) thenupdate frm_usr_rolset usr_estado = 'V'where emp_codigo = (select emp_codigo from frm_empleado where emp_usr = i_usuario)and rol_id= i_rol;elseinsert into frm_usr_rol values(i_rol,@w_emp_codigo, now(), 'V' );end if;END IF;IF (i_opcion = 5) THENselect ro.rol_id ROL, ro.rol_descripcion DESCRIPCION, i_usuario USUARIO, ur.usr_estado ESTADOfrom frm_usr_rol ur, frm_rol rowhere ur.emp_codigo = (select emp_codigo from frm_empleado where emp_usr = i_usuario)and ro.rol_id = ur.rol_id ;END IF;IF (i_opcion = 6) THENdelete from frm_submenu_rol where sub_id = i_submenu and rol_id= i_rol;END IF;IF (i_opcion = 7) THENupdate frm_usr_rolset usr_estado = 'E'where emp_codigo = (select emp_codigo from frm_empleado where emp_usr = i_usuario)and rol_id= i_rol;END IF; IF (i_opcion = 8) THEN  /*CATALOGO MENU*/  SELECT mnu_id, mnu_nombre FROM frm_menu; END IF; IF (i_opcion = 9) THEN  /*CATALOGO ROL*/   SELECT rol_id, rol_descripcion FROM frm_rol; END IF;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_cliente` */

drop procedure if exists `sp_cliente`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_cliente`(i_opcion int, i_nit varchar(25),
i_nombre varchar(180), i_dir varchar(120), i_tel varchar(20), i_tipo char(1))
BEGIN
if (i_opcion = 1) then
select * from frm_cliente
where cte_nit = i_nit;
end if;
if (i_opcion = 2) then
insert into frm_cliente values(i_nombre, i_dir, i_tel, i_nit, i_tipo);
end if;
END$$

DELIMITER ;

/* Procedure structure for procedure `sp_consulta_cv` */

drop procedure if exists `sp_consulta_cv`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consulta_cv`(in i_tipo char(1), /*identifica si es compra o venta*/in i_opcion int, /*la opcion del SP*/ in id_cv    int)
BEGINIF (i_tipo  = 'V') THEN  IF (i_opcion = 1) THEN    select vta_codigo as Codigo,    vta_fecha as Fecha,    vta_total as Total,    suc_nombre as Bodega,    emp_nombre as Empleado     from frm_venta v , frm_empleado e, frm_sucursal s    where v.vta_codigo = id_cv    and  v.emp_codigo = e.emp_codigo    and  v.suc_codigo = s.suc_codigo  ;  END IF;  IF (i_opcion = 2 ) THEN   select d.vta_codigo as Venta, p.pro_nombre as Producto,   p.pro_descripcion AS Descripcion, pr.pre_descripcion AS Presentacion,   d.vdet_cantidad as Cantidad, d.vdet_subtotal as SubTotal   from frm_vdetalle d, frm_producto p, frm_presentacion pr    where d.vta_codigo = id_cv   and pr.pre_codigo = pro_presentacion   and p.pro_codigo = d.pro_codigo   ;  END IF;END IF;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_empleado` */

drop procedure if exists `sp_empleado`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_empleado`(IN i_tipo integer,IN i_codigo integer,IN i_nombre varchar(120),IN i_tel varchar(20),IN i_dir varchar(120),IN i_sueldo float,IN i_puesto varchar(40),IN i_usr char(14),IN i_clave varchar(80),IN i_estado char(1))
BEGINIF (i_tipo = 1) THENselect ifnull(max(emp_codigo), 0) + 1 from frm_empleado into @w_emp;insert into frm_empleado values(@w_emp, i_nombre, i_tel, i_dir, i_sueldo, i_puesto, i_usr, md5(i_clave), i_estado);END IF;IF (i_tipo = 2) THENif (i_clave = 'MISMA' ) THENupdate frm_empleadoset emp_nombre = i_nombre,emp_tel = i_tel,emp_direccion = i_dir,emp_sueldo = i_sueldo,emp_puesto = i_puesto,emp_usr = i_usr,emp_estado = i_estadowhere emp_codigo = i_codigo;elseupdate frm_empleadoset emp_nombre = i_nombre,emp_tel = i_tel,emp_direccion = i_dir,emp_sueldo = i_sueldo,emp_puesto = i_puesto,emp_usr = i_usr,emp_clave = md5(i_clave),emp_estado = i_estadowhere emp_codigo = i_codigo;END if;END IF;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_finanzas` */

drop procedure if exists `sp_finanzas`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_finanzas`(IN i_id_ie integer,IN i_tipo char(1),IN i_opcion integer,IN i_fecha_ini VARCHAR(10),IN i_fecha_fin VARCHAR(10))
BEGINIF (i_tipo = 'I') THEN /*INGRESOS BANCO GENERAL*/   IF (i_opcion  = 1) THEN /*CONSULTA DE -INGRESOS -BANCO -GENERAL*/     SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA     FROM frm_ingresos_egresos     WHERE ie_tipo = 'I'     AND   ie_cuenta = 2     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     UNION     SELECT vta_total, 'VENTA PRODUTO', vta_fecha     FROM frm_venta     WHERE date_format(vta_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(vta_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     ;    END IF;   /********************************************************************************/   IF (i_opcion = 2) THEN /*CONSULTA -INGRESOS -CONSOLIDADO  -GENERAL*/    drop table if exists temporal;    create temporary table temporal (    tm_cuenta varchar(120),    tm_monto  float,    tm_cantidad int    );    SELECT ifnull(count(*),0), ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 1    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_numero, @w_monto;    INSERT INTO temporal VALUES ('CAPITAL', @w_monto, @w_numero);    SELECT ifnull(count(*), 0), ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 2    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_numero, @w_monto;    SELECT count(*), sum(vta_total)    FROM frm_venta     WHERE date_format(vta_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(vta_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_numero2, @w_monto2;    SET @w_tot = @w_monto + @w_monto2;    SET @w_num = @w_numero + @w_numero;    INSERT INTO temporal VALUES ('BANCO', @w_tot, @w_num);    SELECT ifnull(count(*), 0), ifnull(sum(ie_monto), 0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 3     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_numero, @w_monto;    INSERT INTO temporal VALUES ('CAJA_CHICA', @w_monto, @w_numero);    SELECT tm_cuenta as CUENTA, tm_cantidad as NUMERO, tm_monto as MONTO FROM temporal;   END IF;   /********************************************************************************/   IF (i_opcion = 3) THEN /*CONSULTA -INGRESOS -CONSOLIDADO -PARCIAL (NO COMPRA-VENTA)*/    drop table if exists temporal;       create temporary table temporal (    tm_cuenta varchar(120),    tm_monto  float,    tm_cantidad int    );    SELECT ifnull(count(*), 0), ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 1    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_numero, @w_monto;    INSERT INTO temporal VALUES ('CAPITAL', @w_monto, @w_numero);    SELECT ifnull(count(*), 0), ifnull(sum(ie_monto), 0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 2    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_numero, @w_monto;    INSERT INTO temporal VALUES ('BANCO', @w_monto, @w_numero);    SELECT ifnull(count(*), 0), ifnull(sum(ie_monto), 0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 3    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_numero, @w_monto;    INSERT INTO temporal VALUES ('CAJA_CHICA', @w_monto, @w_numero);    SELECT tm_cuenta as CUENTA, tm_cantidad as NUMERO, tm_monto as MONTO FROM temporal;   END IF;   /********************************************************************************/   IF (i_opcion = 4   ) THEN /*CONSULTA -INGRESOS -CONSOLIDADO -SOLO COMPRA-VENTA*/    drop table if exists temporal;       create temporary table temporal (    tm_cuenta varchar(120),    tm_monto  float,    tm_cantidad int    );    SELECT ifnull(count(*), 0), ifnull(sum(vta_total), 0)    FROM frm_venta    WHERE date_format(vta_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(vta_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_numero, @w_monto;    INSERT INTO temporal VALUES ('VENTA PRODUCTO', @w_monto, @w_numero);    SELECT tm_cuenta as CUENTA, tm_cantidad as NUMERO, tm_monto as MONTO FROM temporal;   END IF;  /********************************************************************************/    IF (i_opcion = 5) THEN /*CONSULTA -INGRESOS -BANCO -PARCIAL*/     SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA     FROM frm_ingresos_egresos     WHERE ie_tipo = 'I'     AND   ie_cuenta = 2     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;   END IF;   /********************************************************************************/    IF (i_opcion = 6) THEN /*CONSULTA -INGRESOS -BANCO -COMPRA-VENTA */     SELECT vta_total, 'VENTA PRODUTO', vta_fecha     FROM frm_venta     WHERE date_format(vta_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(vta_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;   END IF;    /********************************************************************************/    IF (i_opcion = 7) THEN /*CONSULTA -INGRESOS -CAJA CHICA */     SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA     FROM frm_ingresos_egresos     WHERE ie_tipo = 'I'     AND   ie_cuenta = 3     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;   END IF;     /********************************************************************************/    IF (i_opcion = 8) THEN /*CONSULTA -INGRESOS -CAPITAL */     SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA     FROM frm_ingresos_egresos     WHERE ie_tipo = 'I'     AND   ie_cuenta = 1     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;   END IF;END IF;/*******************************EGRESOS********************************************************/IF (i_tipo = 'E') THEN    IF (i_opcion = 1) THEN /*CONSULTA EGRESOS CONSOLIDADO GENERAL*/      drop table if exists temporal;      create temporary table temporal (      tm_cuenta varchar(120),      tm_monto  float,      tm_cantidad int      );      SELECT ifnull(count(*),0), ifnull(sum(ie_monto), 0)      FROM frm_ingresos_egresos      WHERE ie_tipo = 'E'      AND ie_cuenta = 3      AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')      AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into @w_numero, @w_monto;      insert into temporal values('CAJA CHICA', @w_monto, @w_numero);      SELECT ifnull(count(*),0), ifnull(sum(ie_monto),0)      FROM frm_ingresos_egresos      WHERE ie_tipo = 'E'      AND ie_cuenta = 2      AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')      AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into @w_numero, @w_monto;      SELECT ifnull(COUNT(*),0), ifnull(sum(com_total),0)      FROM frm_compra      WHERE date_format(com_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')      AND date_format(com_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into @w_numero2, @w_monto2;       SET @w_num = @w_numero + @w_numero2;       SET @w_tot = @w_monto + @w_monto2;      insert into temporal values ('BANCO', @w_tot, @w_num);      SELECT tm_cuenta as CUENTA, tm_cantidad as NUMERO, tm_monto as MONTO FROM temporal;     END IF;    /********************************************************************************/     IF (i_opcion = 2) THEN /*CONSULTA EGRESOS CONSOLIDADO PARCIAL*/      drop table if exists temporal;      create temporary table temporal (      tm_cuenta varchar(120),      tm_monto  float,      tm_cantidad int      );      SELECT count(*), sum(ie_monto)      FROM frm_ingresos_egresos      WHERE ie_tipo = 'E'      AND ie_cuenta = 3      AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')       AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')       into @w_numero, @w_monto;      insert into temporal values('CAJA CHICA', @w_monto, @w_numero);      SELECT ifnull(count(*),0), ifnull(sum(ie_monto),0)      FROM frm_ingresos_egresos      WHERE ie_tipo = 'E'      AND ie_cuenta = 2      AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')      AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into @w_numero, @w_monto;      insert into temporal values ('BANCO', @w_monto, @w_numero);      SELECT tm_cuenta as CUENTA, tm_cantidad as NUMERO, tm_monto as MONTO FROM temporal;     END IF;     /********************************************************************************/     IF (i_opcion = 3) THEN /*CONSULTA EGRESOS CONSOLIDADO SOLO COMPRA-VENTA*/      drop table if exists temporal;      create temporary table temporal (      tm_cuenta varchar(120),      tm_monto  float,      tm_cantidad int      );      SELECT ifnull(COUNT(*),0), ifnull(sum(com_total),0)      FROM frm_compra      WHERE date_format(com_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')      AND date_format(com_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into @w_numero, @w_monto;      insert into temporal values ('COMPRA PRODUCTO', @w_monto, @w_numero);      SELECT tm_cuenta as CUENTA, tm_cantidad as NUMERO, tm_monto as MONTO FROM temporal;     END IF;     /********************************************************************************/     IF (i_opcion = 4) THEN /*CONSULTA EGRESOS BANCO SOLO COMPRA-VENTA*/       SELECT com_total AS MONTO, 'COMPRA PRODUCTO' AS DESCRIPCION, com_fecha AS FECHA       FROM frm_compra       WHERE date_format(com_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')       AND date_format(com_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;     END IF;     /********************************************************************************/     IF (i_opcion = 5) THEN /*CONSULTA EGRESOS BANCO SOLO PARCIAL*/         SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA         FROM frm_ingresos_egresos         WHERE ie_tipo = 'E'         AND ie_cuenta = 2         AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')         AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;     END IF;     /********************************************************************************/     IF (i_opcion = 6) THEN /*CONSULTA EGRESOS BANCO  GENERAL*/         SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA         FROM frm_ingresos_egresos         WHERE ie_tipo = 'E'         and  ie_cuenta = 2         AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')         AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')         UNION         SELECT com_total, 'COMPRA PRODUCTO', com_fecha         FROM frm_compra         where date_format(com_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')         AND date_format(com_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;     END IF;        /********************************************************************************/    IF (i_opcion = 7) THEN /*CONSULTA -EGRESOS -CAJA CHICA */     SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA     FROM frm_ingresos_egresos     WHERE ie_tipo = 'E'     AND   ie_cuenta = 3     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;   END IF;     /********************************************************************************/    IF (i_opcion = 8) THEN /*CONSULTA -EGRESOS -CAPITAL */     SELECT ie_monto as MONTO, ie_descripcion AS DESCRIPCION, ie_fecha as FECHA     FROM frm_ingresos_egresos     WHERE ie_tipo = 'E'     AND   ie_cuenta = 1     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d') ;   END IF;END IF;/*******************************BALANCE***************************************************/IF (i_tipo = 'B') THEN   /*********************************************/   IF (i_opcion = 1) THEN /*BALANCE CONSOLIDADO SOLO COMPRA-VENTA*/    drop table if exists temporal;    create temporary table temporal (    tm_cuenta1  float,    tm_cuenta2  float,    tm_cuenta3  float    );    SELECT  sum(vta_total)    FROM frm_venta    WHERE  date_format(vta_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(vta_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_monto1;     SELECT  sum(com_total)     FROM frm_compra     WHERE date_format(com_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(com_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into  @w_monto2;     insert into temporal values (@w_monto1, @w_monto2, ifnull(@w_monto1 - @w_monto2, 0));     SELECT tm_cuenta1 as 'VENTA PRODUCTO', tm_cuenta2 as 'COMPRA PRODUCTO', tm_cuenta3 as DIFERENCIA from temporal;   END IF;   IF (i_opcion = 2)  THEN /*BALANCE CONSOLIDADO PARCIAL */        drop table if exists temporal;       create temporary table temporal (    tm_descripcion varchar(120),    tm_caja_chica  float,    tm_banco  float,    tm_capital  float    );    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 2    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into  @w_monto1;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 3    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')    AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_monto2;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 1     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_monto3;    INSERT INTO temporal VALUES('INGRESOS', @w_monto2, @w_monto1, @w_monto3);    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'E'    AND ie_cuenta = 2    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into  @w_monto1;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'E'    AND ie_cuenta = 3     AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_monto2;    SELECT  sum(ie_monto)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'E'    AND ie_cuenta = 1    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_monto3;    INSERT INTO temporal VALUES('EGRESOS', @w_monto2, @w_monto1, @w_monto3);    SELECT tm_caja_chica from temporal where tm_descripcion = 'INGRESOS' into @i_cchica;    SELECT tm_banco from temporal where tm_descripcion = 'INGRESOS' into @i_banco;    SELECT tm_capital from temporal where tm_descripcion = 'INGRESOS' into @i_capital;    SELECT tm_caja_chica from temporal where tm_descripcion = 'EGRESOS' into @e_cchica;    SELECT tm_banco from temporal where tm_descripcion = 'EGRESOS' into @e_banco;    SELECT tm_capital from temporal where tm_descripcion = 'EGRESOS' into @e_capital;    insert into temporal VALUES('DIFERENCIA', ifnull(@i_cchica - @e_cchica,0), ifnull(@i_banco - @e_banco, 0), ifnull(@i_capital- @e_capital, 0));    SELECT tm_descripcion as TIPO,           tm_caja_chica as CAJA_CHICA,           tm_banco as BANCO,           tm_capital as CAPITAL    FROM temporal;   END IF;   /******************************************************************************/  IF (i_opcion = 3)  THEN /*BALANCE CONSOLIDADO GENERAL */         drop table if exists temporal;         create temporary table temporal (    tm_descripcion varchar(120),    tm_caja_chica  float,    tm_banco  float,    tm_capital  float    );    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 2    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into  @w_monto1;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 3    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_monto2;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'I'    AND ie_cuenta = 1    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_monto3;      SELECT  ifnull(sum(vta_total),0)      FROM frm_venta     WHERE date_format(vta_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(vta_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')       into @w_monto;    SET @w_tot = @w_monto1 + @w_monto;    INSERT INTO temporal VALUES('INGRESOS', @w_monto2, @w_tot, @w_monto3);    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'E'    AND ie_cuenta = 2    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into  @w_monto1;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'E'    AND ie_cuenta = 3    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')    into @w_monto2;    SELECT  ifnull(sum(ie_monto),0)    FROM frm_ingresos_egresos    WHERE ie_tipo = 'E'    AND ie_cuenta = 1    AND date_format(ie_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(ie_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')     into @w_monto3;     SELECT ifnull(sum(com_total),0)     FROM frm_compra     WHERE date_format(com_fecha, '%Y-%m-%d') >= date_format(i_fecha_ini, '%Y-%m-%d')     AND date_format(com_fecha, '%Y-%m-%d') <= date_format(i_fecha_fin, '%Y-%m-%d')      into  @w_monto;   SET @w_tot = @w_monto1 + @w_monto;    INSERT INTO temporal VALUES('EGRESOS', @w_monto2, @w_tot, @w_monto3);    SELECT tm_caja_chica from temporal where tm_descripcion = 'INGRESOS' into @i_cchica;    SELECT tm_banco from temporal where tm_descripcion = 'INGRESOS' into @i_banco;    SELECT tm_capital from temporal where tm_descripcion = 'INGRESOS' into @i_capital;    SELECT tm_caja_chica from temporal where tm_descripcion = 'EGRESOS' into @e_cchica;    SELECT tm_banco from temporal where tm_descripcion = 'EGRESOS' into @e_banco;    SELECT tm_capital from temporal where tm_descripcion = 'EGRESOS' into @e_capital;    insert into temporal VALUES('DIFERENCIA', ifnull(@i_cchica - @e_cchica,0), ifnull(@i_banco - @e_banco, 0), ifnull(@i_capital- @e_capital, 0));    SELECT tm_descripcion as DESCRIPCION, tm_caja_chica as CAJA_CHICA, tm_banco  as BANCO, tm_capital as CAPITAL    FROM temporal;/*     select 'hola';*/   END IF;  /******************************************************************************/END IF;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_insertar_ie` */

drop procedure if exists `sp_insertar_ie`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_insertar_ie`(
IN i_tipo CHAR(1),
IN i_monto FLOAT,
IN i_descripcion varchar(180),
IN i_documento   varchar(120),
IN i_responsable varchar(120),
IN i_usuario     char(14),
IN i_tipo_ie        char(1),
IN i_cuenta     int
)
BEGIN
IF (i_tipo = 'C') THEN 
SELECT cie_id, cie_cuenta from frm_catalogo_ie
WHERE cie_estado = 'V';
END IF;
IF (i_tipo = 'I') THEN 
select ifnull(max(ie_id),0) + 1 from frm_ingresos_egresos into @w_max;
INSERT INTO frm_ingresos_egresos VALUES(@w_max, i_monto, i_descripcion, i_documento, i_responsable, i_usuario, now(), i_tipo_ie, i_cuenta);
END IF;
END$$

DELIMITER ;

/* Procedure structure for procedure `sp_insertar_producto` */

drop procedure if exists `sp_insertar_producto`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_insertar_producto`(IN i_codigo VARCHAR(20),IN i_nombre varchar(60),IN i_descripcion varchar(160),IN i_existencia integer,IN i_precio_venta float,IN i_categoria integer,IN i_presentacion integer,IN i_precio_compra float,in i_total  float,IN i_parent varchar(20),in i_proveedor integer,IN i_tipo       integer,in i_sucursal   integer)
BEGINif (i_tipo = 1) thenstart transaction;if (i_parent= '') thenINSERT INTO frm_producto VALUES(i_codigo, i_nombre, i_descripcion, i_existencia, i_precio_venta, i_presentacion, i_categoria, i_codigo, 'V');insert into frm_existencia values(i_codigo, i_sucursal, i_existencia);elseINSERT INTO frm_producto VALUES(i_codigo, i_nombre, i_descripcion, i_existencia, i_precio_venta, i_presentacion, i_categoria, i_parent, 'V');insert into frm_existencia values(i_codigo, i_sucursal, i_existencia);end if;if (i_existencia > 0) thenselect ifnull(max(com_id),0) + 1 from frm_compra into @w_id_compra;insert into frm_compra values(@w_id_compra, now(), i_existencia*i_precio_compra, 'A', i_proveedor);insert into frm_cdetalle values(i_existencia,i_existencia*i_precio_compra, i_precio_compra, i_codigo, @w_id_compra );end if;COMMIT;end if;if (i_tipo = 4) thenselect ifnull(max(com_id),0) + 1 from frm_compra into @w_id_compra;insert into frm_compra values(@w_id_compra, now(), i_total, 'X', i_proveedor);end if;if (i_tipo = 5) thenselect ifnull(max(com_id),0) from frm_compra into @w_id_compra;insert into frm_cdetalle values(i_existencia,i_precio_venta, i_precio_compra, i_codigo, @w_id_compra ); if exists (select 1 from frm_producto where pro_codigo = i_codigo and pro_estado = 'V') then   UPDATE frm_existencia   set exi_existencia = exi_existencia + i_existencia   where pro_codigo = i_codigo    and suc_codigo = i_sucursal; end if;end if;if (i_tipo = 6) thenselect ifnull(max(com_id),0) from frm_compra into @w_id_compra;update frm_compraset com_estado = 'A'where com_id = @w_id_compra;end if;if (i_tipo = 2) thenupdate frm_productoset pro_nombre = i_nombre,pro_descripcion = i_descripcion,pro_existencia = i_existencia,pro_precio_venta = i_precio_venta,pro_presentacion = i_presentacion,pro_categoria = i_categoria,pro_parent = i_parentwhere pro_codigo = i_codigoand  pro_estado = 'V';end if;if (i_tipo = 3) thenupdate frm_productoset pro_estado = 'E'where pro_codigo = i_codigoand  pro_estado = 'V';end if;if (i_tipo = 11) then SELECT trs_cant_origen, trs_cant_destinoFROM frm_prm_trasladoWHERE pro_cod_origen = i_codigoAND   pro_cod_destino = i_parentinto @w_cant_origen, @w_cant_destino;SELECT exi_existenciaFROM frm_existenciaWHERE pro_codigo = i_codigo and suc_codigo = i_sucursal into @w_existencia;IF (@w_existencia >= @w_cant_origen) thenstart transaction;/*UPDATE frm_productoset pro_existencia = pro_existencia - @w_cant_origenwhere pro_codigo = i_codigoand   pro_estado = 'V';*/update frm_existenciaset exi_existencia = exi_existencia - @w_cant_origenwhere pro_codigo = i_codigoand suc_codigo = i_sucursal;/*update frm_productoset pro_existencia = pro_existencia + @w_cant_destinowhere pro_codigo = i_parentand   pro_estado = 'V';*/update frm_existenciaset exi_existencia = exi_existencia + @w_cant_destinowhere pro_codigo = i_parentand suc_codigo = i_sucursal;select ifnull(max(tra_id),0)+1 from frm_traslado into @w_count;insert into frm_traslado values(@w_count, now(), i_nombre, i_codigo, i_parent, i_sucursal);commit;END IF;end if;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_insertar_venta` */

drop procedure if exists `sp_insertar_venta`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_insertar_venta`(in i_opcion int,IN i_total float,IN i_cantidad integer,IN i_descuento float,IN i_subtotal float,IN i_cte_codigo varchar(25),IN i_suc_codigo integer,IN i_emp_codigo integer,IN i_pro_codigo  varchar(20))
BEGINif (i_opcion = 1) then select ifnull(count(vta_codigo),0) + 1 from frm_ventainto @w_id_venta;insert into frm_venta values(@w_id_venta, now(),  i_total,i_emp_codigo , i_suc_codigo , i_cte_codigo,'X');end if;if (i_opcion = 21) thenselect ifnull(count(vta_codigo), 0) from frm_venta into @w_id_venta;insert into frm_vdetalle values(i_cantidad, i_descuento, i_subtotal, i_pro_codigo, @w_id_venta);update frm_productoset pro_existencia = pro_existencia - i_cantidadwhere pro_codigo = i_pro_codigo;end if;if (i_opcion = 2) thenselect ifnull(count(vta_codigo), 0) from frm_venta into @w_id_venta;insert into frm_vdetalle values(i_cantidad, i_descuento, i_subtotal, i_pro_codigo, @w_id_venta);update frm_existenciaset exi_existencia = exi_existencia - i_cantidadwhere pro_codigo = i_pro_codigoand   suc_codigo = i_suc_codigo;end if;if (i_opcion = 3) thenselect ifnull(count(vta_codigo), 0) from frm_ventainto @w_i_venta;update frm_ventaset  vta_estado = 'A'where vta_codigo = @w_i_venta;end if;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_mant_producto` */

drop procedure if exists `sp_mant_producto`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_mant_producto`(i_opcion int)
BEGINif (i_opcion = 1) thenSELECT * FROM frm_presentacion;end if ;if (i_opcion = 2) thenSELECT * FROM frm_categoria;end if;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_obtener_sucursal` */

drop procedure if exists `sp_obtener_sucursal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtener_sucursal`(IN i_opcion int)
BEGINif (i_opcion = 1) then select * from frm_sucursal;end if;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_obtiene_producto` */

drop procedure if exists `sp_obtiene_producto`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_obtiene_producto`(i_tipo int,i_nom  varchar(120),i_sucursal int)
BEGINif (i_tipo = 1) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, pro_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIA, pro_parent as PADREfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_estado = 'V'and  frm_existencia.suc_codigo = i_sucursal;end if;if (i_tipo = 2) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIA, pro_parent as PADREfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_producto.pro_estado = 'V'and  frm_existencia.suc_codigo = i_sucursaland  frm_categoria.cat_descripcion like concat('%', i_nom, '%');end if;if (i_tipo = 3) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIA, pro_parent as PADREfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_producto.pro_estado = 'V'and  frm_existencia.suc_codigo = i_sucursaland  frm_presentacion.pre_descripcion like concat('%', i_nom, '%');end if;if (i_tipo = 4) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIA, pro_parent as PADREfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_producto.pro_estado = 'V'and  frm_existencia.suc_codigo = i_sucursaland  frm_producto.pro_nombre like concat('%', i_nom, '%');end if;if (i_tipo = 44) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIAfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_estado = 'V'and  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_existencia.suc_codigo = i_sucursaland  frm_producto.pro_nombre like concat('%', i_nom, '%');end if;if (i_tipo = 5) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIA, pro_parent as PADREfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_existencia.suc_codigo = i_sucursaland  frm_producto.pro_estado = 'V'and  frm_producto.pro_codigo like concat('%', i_nom, '%');end if;if (i_tipo = 55) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIAfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_estado = 'V'and  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_existencia.suc_codigo = i_sucursaland  frm_producto.pro_codigo like concat('%', i_nom, '%');end if;if (i_tipo = 6) thenselect * from frm_categoria;end if;if (i_tipo = 7) thenselect * from frm_presentacion;end if;if (i_tipo = 8) thenselect pro_nombre, pro_existencia, pro_precio_venta,pre_descripcion, pro_descripcionfrom frm_producto p, frm_presentacion prwhere pro_codigo = i_nomand  p.pro_presentacion = pr.pre_codigoand  p.pro_estado = 'V';end if;if (i_tipo = 81) thenselect pro_nombre, exi_existencia, pro_precio_venta,pre_descripcion, pro_descripcionfrom frm_producto p, frm_presentacion pr, frm_existencia ewhere p.pro_codigo = i_nomand p.pro_codigo = e.pro_codigoand e.suc_codigo = i_sucursaland  p.pro_presentacion = pr.pre_codigoand  p.pro_estado = 'V';end if;if (i_tipo = 9) thenselect frm_producto.pro_codigo as CODIGO, pro_nombre as NOMBRE,pro_descripcion as DESCRIPCION, exi_existencia as EXISTENCIA, pro_precio_venta as PRECIO_VENTA,frm_presentacion.pre_descripcion AS PRESENTACION, frm_categoria.cat_descripcion as CATEGORIAfrom frm_producto, frm_presentacion, frm_categoria, frm_existenciawhere frm_producto.pro_presentacion = frm_presentacion.pre_codigoand  frm_producto.pro_categoria = frm_categoria.cat_codigoand  frm_producto.pro_codigo = i_nomand  frm_producto.pro_codigo = frm_existencia.pro_codigoand  frm_existencia.suc_codigo = i_sucursaland  frm_producto.pro_estado = 'V';end if;if (i_tipo = 10) thenselect pro_cod_destino, pro_cod_destinofrom frm_prm_trasladowhere pro_cod_origen = i_nom;end if;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_sucursal` */

drop procedure if exists `sp_sucursal`;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_sucursal`(in i_opcion int,in i_nombre varchar(60),in i_direccion varchar(180),in i_zona  int,in i_dep   int)
BEGINif (i_opcion = 1) thenselect ifnull(max(suc_codigo), 0) + 1 from frm_sucursal into @w_cont;insert into frm_sucursal values(@w_cont, i_nombre, i_direccion, i_zona, i_dep);end if;if (i_opcion = 2) thendelete from frm_sucursalwhere suc_codigo = i_zona;end if;END$$

DELIMITER ;

/* Procedure structure for procedure `sp_traslado_producto` */

drop procedure if exists `sp_traslado_producto`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_traslado_producto`(in i_opcion  int,in i_sucursal_envia int,in i_sucursal_recibe  int,in i_cantidad  int,in i_pro_codigo varchar(20),in i_usr char(14))
BEGIN if (i_opcion = 1) then  start transaction;   update frm_existencia   set exi_existencia = exi_existencia - i_cantidad   where pro_codigo = i_pro_codigo   and suc_codigo = i_sucursal_envia;   update frm_existencia   set exi_existencia = exi_existencia + i_cantidad   where pro_codigo = i_pro_codigo   and suc_codigo = i_sucursal_recibe;   insert into frm_traslado_producto values (0, i_usr, now(), i_pro_codigo, i_sucursal_envia, i_sucursal_recibe, i_cantidad);  commit; end if;END$$

DELIMITER ;

/* Function  structure for function  `fnc_cambio_clave` */

drop function  if exists `fnc_cambio_clave`;

DELIMITER $$

CREATE DEFINER=`root`@`%` FUNCTION `fnc_cambio_clave`(i_opcion int,i_clave_ant varchar(80),i_clave_nueva varchar(80),i_cod_emp int) RETURNS varchar(30) CHARSET latin1
BEGINIF (i_opcion = 1) thenIF EXISTS (SELECT 1 FROM frm_empleado WHERE  emp_codigo = i_cod_emp AND emp_clave = md5(i_clave_ant)) THENUPDATE frm_empleadoSET emp_clave = md5(i_clave_nueva)WHERE emp_codigo = i_cod_emp;RETURN 'CONTRASEÑA CAMBIADA CON EXITO';ELSERETURN 'CONTRASEÑA ACTUAL INVALIDA';END IF;END IF;END$$

DELIMITER ;

/* Function  structure for function  `fnc_insertar_producto` */

drop function  if exists `fnc_insertar_producto`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `fnc_insertar_producto`( i_codigo VARCHAR(20), i_nombre varchar(60), i_descripcion varchar(160), i_existencia integer, i_precio_venta float, i_categoria integer, i_presentacion integer, i_precio_compra float, i_total  float, i_parent varchar(20), i_proveedor integer, i_tipo       integer, i_sucursal   integer) RETURNS varchar(30) CHARSET latin1
BEGINif (i_tipo = 6) thenselect ifnull(max(com_id),0) from frm_compra into @w_id_compra;update frm_compraset com_estado = 'A'where com_id = @w_id_compra;end if;RETURN @w_id_compra;END$$

DELIMITER ;

/* Function  structure for function  `fnc_insertar_venta` */

drop function  if exists `fnc_insertar_venta`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `fnc_insertar_venta`( i_opcion int, i_total float, i_cantidad integer, i_descuento float, i_subtotal float, i_cte_codigo varchar(25), i_suc_codigo integer, i_emp_codigo integer, i_pro_codigo  varchar(20)) RETURNS varchar(30) CHARSET latin1
BEGIN/*if (i_opcion = 1) thenselect ifnull(max(vta_codigo),0) + 1 from frm_ventainto @w_id_venta;insert into frm_venta values(@w_id_venta, now(),  i_total,i_emp_codigo , i_suc_codigo , i_cte_codigo,'X');set @w_id_venta_cast = convert(varchar(30),@w_id_venta);end if;*//*if (i_opcion = 21) thenselect ifnull(max(vta_codigo), 0) from frm_venta into @w_id_venta;insert into frm_vdetalle values(i_cantidad, i_descuento, i_subtotal, i_pro_codigo, @w_id_venta);update frm_productoset pro_existencia = pro_existencia - i_cantidadwhere pro_codigo = i_pro_codigo;end if;if (i_opcion = 2) thenselect ifnull(max(vta_codigo), 0) from frm_venta into @w_id_venta;insert into frm_vdetalle values(i_cantidad, i_descuento, i_subtotal, i_pro_codigo, @w_id_venta);update frm_existenciaset exi_existencia = exi_existencia - i_cantidadwhere pro_codigo = i_pro_codigoand   suc_codigo = i_suc_codigo;end if;*/if (i_opcion = 3) thenselect ifnull(max(vta_codigo), 0) from frm_ventainto @w_i_venta;update frm_ventaset  vta_estado = 'A'where vta_codigo = @w_i_venta;end if;return @w_i_venta;END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
