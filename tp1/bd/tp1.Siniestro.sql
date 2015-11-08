/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Siniestro` (
  `idSiniestro` int(11) NOT NULL,
  `idTipoCausaProbable` int(11) DEFAULT NULL,
  `idTipoColision` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Hora` time DEFAULT NULL,
  `idVehiculo` int(11) NOT NULL,

  `idCondicionGeneral` int(11) NOT NULL,
  `idTipoAccidente` int(11) NOT NULL,
  `idLugar` int(11) NOT NULL,
  `Siniestrocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSiniestro`),
  UNIQUE KEY `idSiniestro_UNIQUE` (`idSiniestro`),
  KEY `FK_SiniestroVehiculo_idx` (`idVehiculo`),
  KEY `fk_Siniestro_CondicionGeneral1_idx` (`idCondicionGeneral`),
  CONSTRAINT `FK_SiniestroVehiculo` FOREIGN KEY (`idVehiculo`) REFERENCES `Vehiculo` (`idVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Siniestro_CondicionGeneral1` FOREIGN KEY (`idCondicionGeneral`) REFERENCES `CondicionGeneral` (`idCondicionGeneral`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `tp1`.`siniestro` 
ADD INDEX `FK_Sinietro_TipoColision_idx` (`idTipoColision` ASC)  COMMENT '',
ADD INDEX `FK_Siniestro_TipoCausaProbable_idx` (`idTipoCausaProbable` ASC)  COMMENT '',
ADD INDEX `FK_Siniestro_TipoAccidente_idx` (`idTipoAccidente` ASC)  COMMENT '',
ADD INDEX `FK_Siniestro_Lugar_idx` (`idLugar` ASC)  COMMENT '';
ALTER TABLE `tp1`.`siniestro` 
ADD CONSTRAINT `FK_Siniestro_TipoColision`
  FOREIGN KEY (`idTipoColision`)
  REFERENCES `tp1`.`tipocolision` (`idTipoColision`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Siniestro_TipoCausaProbable`
  FOREIGN KEY (`idTipoCausaProbable`)
  REFERENCES `tp1`.`tipocausaprobable` (`idTipoCausaProbable`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Siniestro_TipoAccidente`
  FOREIGN KEY (`idTipoAccidente`)
  REFERENCES `tp1`.`tipoaccidente` (`idTipoAccidente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Siniestro_Lugar`
  FOREIGN KEY (`idLugar`)
  REFERENCES `tp1`.`lugar` (`idLugar`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


