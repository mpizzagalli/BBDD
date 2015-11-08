/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Autopista` (
  `idViaPublica` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `KM` int(11) DEFAULT NULL,
  PRIMARY KEY (`idViaPublica`),
  CONSTRAINT `FK_AutopistaViaPublica` FOREIGN KEY (`idViaPublica`) REFERENCES `ViaPublica` (`idViaPublica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
