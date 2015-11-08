/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Antecedente` (
  `idAntecedente` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Descripcion` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idAntecedente`),
  KEY `FK_AntecedentePersona_idx` (`DNI`),
  CONSTRAINT `FK_AntecedentePersona` FOREIGN KEY (`DNI`) REFERENCES `Persona` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
