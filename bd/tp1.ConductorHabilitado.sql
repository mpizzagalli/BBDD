/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `ConductorHabilitado` (
  `idVehiculo` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  PRIMARY KEY (`idVehiculo`,`DNI`),
  KEY `FK_ConductorHabilitadoConductor_idx` (`DNI`),
  CONSTRAINT `FK_ConductorHabilitadoConductor` FOREIGN KEY (`DNI`) REFERENCES `Conductor` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ConductorHabilitadoVehiculo` FOREIGN KEY (`idVehiculo`) REFERENCES `Vehiculo` (`idVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
