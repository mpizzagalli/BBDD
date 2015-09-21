/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Ruta` (
  `idViaPublica` int(11) NOT NULL,
  `KMs` varchar(45) DEFAULT NULL,
  `Territorio` varchar(45) DEFAULT NULL COMMENT 'Nacional o  Provincial',
  `NroRuta` int(11) DEFAULT NULL,
  PRIMARY KEY (`idViaPublica`),
  CONSTRAINT `FK_RutaViaPublica` FOREIGN KEY (`idViaPublica`) REFERENCES `ViaPublica` (`idViaPublica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
