/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Vehiculo` (
  `idVehiculo` int(11) NOT NULL,
  `Dominio` varchar(10) NOT NULL,
  `FechaPatentamiento` date NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idTipoVehiculo` int(11) NOT NULL,
  PRIMARY KEY (`idVehiculo`),
  KEY `FK_VehiculoCategorai_idx` (`idCategoria`),
  KEY `FK_VehiculoTipoVehiculo_idx` (`idTipoVehiculo`),
  CONSTRAINT `FK_VehiculoCategorai` FOREIGN KEY (`idCategoria`) REFERENCES `Categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VehiculoTipoVehiculo` FOREIGN KEY (`idTipoVehiculo`) REFERENCES `TipoVehiculo` (`idTipoVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
