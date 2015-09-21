/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `SiniestroTestigo` (
  `idSiniestro` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `Testimonio` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idSiniestro`,`DNI`),
  KEY `FK_SiniestroTestigo_Testigo_idx` (`DNI`),
  CONSTRAINT `FK_SiniestroTestigo_Siniestro` FOREIGN KEY (`idSiniestro`) REFERENCES `Siniestro` (`idSiniestro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SiniestroTestigo_Testigo` FOREIGN KEY (`DNI`) REFERENCES `Testigo` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
