/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Informe` (
  `idInforme` int(11) NOT NULL,
  `Siniestro_idSiniestro` int(11) NOT NULL,
  `contenido` varchar(45) NOT NULL,
  `TipoInforme_idTipoInforme` int(11) NOT NULL,
  PRIMARY KEY (`idInforme`),
  KEY `fk_Informe_Siniestro1_idx` (`Siniestro_idSiniestro`),
  KEY `fk_Informe_TipoInforme1_idx` (`TipoInforme_idTipoInforme`),
  CONSTRAINT `fk_Informe_Siniestro1` FOREIGN KEY (`Siniestro_idSiniestro`) REFERENCES `Siniestro` (`idSiniestro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Informe_TipoInforme1` FOREIGN KEY (`TipoInforme_idTipoInforme`) REFERENCES `TipoInforme` (`idTipoInforme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
