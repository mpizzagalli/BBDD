/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `FueRealizadoPor` (
  `Funcionario_idFuncionario` int(11) NOT NULL,
  `Informe_idInforme` int(11) NOT NULL,
  PRIMARY KEY (`Funcionario_idFuncionario`,`Informe_idInforme`),
  KEY `fk_Funcionario_has_Informe_Informe1_idx` (`Informe_idInforme`),
  KEY `fk_Funcionario_has_Informe_Funcionario1_idx` (`Funcionario_idFuncionario`),
  CONSTRAINT `fk_Funcionario_has_Informe_Funcionario1` FOREIGN KEY (`Funcionario_idFuncionario`) REFERENCES `Funcionario` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_has_Informe_Informe1` FOREIGN KEY (`Informe_idInforme`) REFERENCES `Informe` (`idInforme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
