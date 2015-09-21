/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Denuncia` (
  `idDenuncia` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Descripcion` varchar(2000) DEFAULT NULL,
  `DNIDenunciante` int(11) NOT NULL,
  PRIMARY KEY (`idDenuncia`),
  KEY `FK_DenunciaPersona_idx` (`DNIDenunciante`),
  CONSTRAINT `FK_DenunciaPersona` FOREIGN KEY (`DNIDenunciante`) REFERENCES `Persona` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
