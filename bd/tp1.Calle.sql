/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Calle` (
  `idViaPublica` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Altura` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idViaPublica`),
  CONSTRAINT `FK_CalleViaPublica` FOREIGN KEY (`idViaPublica`) REFERENCES `ViaPublica` (`idViaPublica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
