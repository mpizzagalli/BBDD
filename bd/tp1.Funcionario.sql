/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `Funcionario` (
  `DNI` int(11) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `Organismo_idOrganismo` int(11) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_Funcionario_Organismo1_idx` (`Organismo_idOrganismo`),
  CONSTRAINT `fk_Funcionario_Organismo1` FOREIGN KEY (`Organismo_idOrganismo`) REFERENCES `Organismo` (`idOrganismo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
