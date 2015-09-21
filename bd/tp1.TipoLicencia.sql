/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `TipoLicencia` (
  `idTipoLicencia` int(11) NOT NULL,
  `Clase` char(2) NOT NULL COMMENT 'Clase puede ser B1',
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoLicencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
