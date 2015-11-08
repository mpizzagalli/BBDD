/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `SiniestroAcompañante` (
  `idSiniestro` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `UsoCinturon` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idSiniestro`,`DNI`),
  KEY `Acompañante_idx` (`DNI`),
  CONSTRAINT `idSiniestro` FOREIGN KEY (`idSiniestro`) REFERENCES `Siniestro` (`idSiniestro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Acompañante` FOREIGN KEY (`DNI`) REFERENCES `Acompañante` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
