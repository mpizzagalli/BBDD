/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `CondicionGeneral` (
  `idCondicionGeneral` int(11) NOT NULL,
  `elementoDeSeguridadPeatonal` tinyint(1) DEFAULT NULL,
  `EstadoIluminacion_idEstadoIluminacion` int(11) NOT NULL,
  `TipoCondicionClimatica_idTipoCondicionClimatica` int(11) NOT NULL,
  `TipoPavimento_idTipoPavimento` int(11) NOT NULL,
  `TipoEstadoVia_idTipoEstadoVia` int(11) NOT NULL,
  PRIMARY KEY (`idCondicionGeneral`),
  KEY `fk_CondicionGeneral_EstadoIluminacion1_idx` (`EstadoIluminacion_idEstadoIluminacion`),
  KEY `fk_CondicionGeneral_TipoCondicionClimatica1_idx` (`TipoCondicionClimatica_idTipoCondicionClimatica`),
  KEY `fk_CondicionGeneral_TipoPavimento1_idx` (`TipoPavimento_idTipoPavimento`),
  KEY `fk_CondicionGeneral_TipoEstadoVia1_idx` (`TipoEstadoVia_idTipoEstadoVia`),
  CONSTRAINT `fk_CondicionGeneral_EstadoIluminacion1` FOREIGN KEY (`EstadoIluminacion_idEstadoIluminacion`) REFERENCES `EstadoIluminacion` (`idEstadoIluminacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CondicionGeneral_TipoCondicionClimatica1` FOREIGN KEY (`TipoCondicionClimatica_idTipoCondicionClimatica`) REFERENCES `TipoCondicionClimatica` (`idTipoCondicionClimatica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CondicionGeneral_TipoPavimento1` FOREIGN KEY (`TipoPavimento_idTipoPavimento`) REFERENCES `TipoPavimento` (`idTipoPavimento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CondicionGeneral_TipoEstadoVia1` FOREIGN KEY (`TipoEstadoVia_idTipoEstadoVia`) REFERENCES `TipoEstadoVia` (`idTipoEstadoVia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
