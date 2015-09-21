/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `CompaniaAseguradora` (
  `idCompania` int(11) NOT NULL,
  `CUIT` varchar(20) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCompania`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
