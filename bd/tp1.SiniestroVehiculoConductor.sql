/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `SiniestroVehiculoConductor` (
  `idSiniestro` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `idVehiculo` int(11) NOT NULL,
  `UsoCinturon` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idSiniestro`,`DNI`,`idVehiculo`),
  KEY `FK_SVC_Conductor_idx` (`DNI`),
  CONSTRAINT `FK_SVC_Conductor` FOREIGN KEY (`DNI`) REFERENCES `Conductor` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SVC_Siniestro` FOREIGN KEY (`idSiniestro`) REFERENCES `Siniestro` (`idSiniestro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SVC_Vehiculo` FOREIGN KEY (`idSiniestro`) REFERENCES `Vehiculo` (`idVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
