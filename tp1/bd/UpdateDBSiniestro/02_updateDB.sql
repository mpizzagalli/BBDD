ALTER TABLE `tp1`.`persona` 
DROP FOREIGN KEY `FK_PersonaConducto`;

ALTER TABLE `tp1`.`persona` 
DROP FOREIGN KEY `FK_PersonaFuncionario`;


ALTER TABLE `tp1`.`conductor` 
ADD CONSTRAINT `FK_ConductorPersona`
  FOREIGN KEY (`DNI`)
  REFERENCES `tp1`.`persona` (`DNI`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
