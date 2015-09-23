ALTER TABLE `tp1`.`funcionario` 
ADD CONSTRAINT `FK_Funcionario_Persona`
  FOREIGN KEY (`DNI`)
  REFERENCES `tp1`.`persona` (`DNI`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
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