/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Infraccion` (
  `idInfraccion` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `idTipoInfraccion` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Comentario` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idInfraccion`),
  KEY `FK_InfraccionTipoInfraccion_idx` (`idTipoInfraccion`),
  KEY `FK_InfraccionConductor_idx` (`DNI`),
  CONSTRAINT `FK_InfraccionTipoInfraccion` FOREIGN KEY (`idTipoInfraccion`) REFERENCES `TipoInfraccion` (`idTipoInfraccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_InfraccionConductor` FOREIGN KEY (`DNI`) REFERENCES `Conductor` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
