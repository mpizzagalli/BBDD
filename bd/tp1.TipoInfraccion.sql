/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `TipoInfraccion` (
  `idTipoInfraccion` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`idTipoInfraccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
