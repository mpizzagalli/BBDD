USE `tp1`;
DROP procedure IF EXISTS `DetalleDeAccidentesPorModalidad`;

DELIMITER $$
USE `tp1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `DetalleDeAccidentesPorModalidad`(modalidad varchar(200))
BEGIN

select Licencia.NroLicencia, count(Siniestro.idSiniestro)
from TipoColision
inner join Siniestro on Siniestro.idTipoColision = TipoColision.idTipoColision 
inner join siniestrovehiculoconductor SVC on SVC.idSiniestro = Siniestro.idSiniestro 
inner join Conductor on  Conductor.DNI = SVC.DNI 
inner join Licencia on Conductor.nroLicencia = Licencia.nroLicencia
where TipoColision.Descipcion = modalidad
group by Licencia.NroLicencia;

END$$

DELIMITER ;
