/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Conductor` (
  `DNI` int(11) NOT NULL,
  `nroLicencia` int(11) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `FK_ConductorLicencia_idx` (`nroLicencia`),
  CONSTRAINT `FK_ConductorLicencia` FOREIGN KEY (`nroLicencia`) REFERENCES `Licencia` (`NroLicencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
