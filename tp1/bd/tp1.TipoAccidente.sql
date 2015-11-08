/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `TipoAccidente` (
  `idTipoAccidente` int(11) NOT NULL,
  `Descipcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idTipoAccidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
