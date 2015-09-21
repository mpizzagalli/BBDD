/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Lugar` (
  `idLugar` int(11) NOT NULL,
  `Direccion` varchar(300) NOT NULL,
  `CoordenadasGPS` varchar(45) DEFAULT NULL,
  `idViaPublica` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLugar`),
  KEY `FK_LugarViaPublica_idx` (`idViaPublica`),
  CONSTRAINT `FK_LugarViaPublica` FOREIGN KEY (`idViaPublica`) REFERENCES `ViaPublica` (`idViaPublica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
