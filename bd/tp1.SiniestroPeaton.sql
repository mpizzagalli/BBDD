/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `SiniestroPeaton` (
  `idSiniestro` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  PRIMARY KEY (`idSiniestro`,`DNI`),
  KEY `FK_SiniestroPeaton_Peaton_idx` (`DNI`),
  CONSTRAINT `FK_SiniestroPeaton_Siniestro` FOREIGN KEY (`idSiniestro`) REFERENCES `Siniestro` (`idSiniestro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SiniestroPeaton_Peaton` FOREIGN KEY (`DNI`) REFERENCES `Peaton` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
