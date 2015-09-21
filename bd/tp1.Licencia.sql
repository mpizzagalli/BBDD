/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Licencia` (
  `NroLicencia` int(11) NOT NULL,
  `FechaVencimiento` datetime NOT NULL,
  `idTipoLicencia` int(11) NOT NULL,
  PRIMARY KEY (`NroLicencia`),
  KEY `FK_LicenciaTipoLicencia_idx` (`idTipoLicencia`),
  CONSTRAINT `FK_LicenciaTipoLicencia` FOREIGN KEY (`idTipoLicencia`) REFERENCES `TipoLicencia` (`idTipoLicencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
