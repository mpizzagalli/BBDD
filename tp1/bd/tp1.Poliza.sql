/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Poliza` (
  `NroPoliza` int(11) NOT NULL,
  `idVehiculo` int(11) NOT NULL,
  `idCompania` int(11) NOT NULL,
  `idTipoCobertura` int(11) NOT NULL,
  `FechaDesde` datetime NOT NULL,
  `FechaHasta` datetime NOT NULL,
  PRIMARY KEY (`NroPoliza`),
  UNIQUE KEY `idPoliza_UNIQUE` (`NroPoliza`),
  KEY `FK_Poliza_TipoCobertura_idx` (`idTipoCobertura`),
  KEY `FK_Poliza_Vehiculo_idx` (`idVehiculo`),
  KEY `FK_Poliza_Compania_idx` (`idCompania`),
  CONSTRAINT `FK_Poliza_TipoCobertura` FOREIGN KEY (`idTipoCobertura`) REFERENCES `TipoCobertura` (`idTipoCobertura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Poliza_Vehiculo` FOREIGN KEY (`idVehiculo`) REFERENCES `Vehiculo` (`idVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Poliza_Compania` FOREIGN KEY (`idCompania`) REFERENCES `CompaniaAseguradora` (`idCompania`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
