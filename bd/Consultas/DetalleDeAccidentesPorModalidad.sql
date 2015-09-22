CREATE DEFINER=`root`@`localhost` PROCEDURE `DetalleDeAccidentesPorModalidad`(modalidad varchar(200))
BEGIN

select Licencia.NroLicencia, count(idSiniestro)
from TipoColision
inner join Siniestro on Siniestro.idTipoColision = TipoColision.idTipoColision 
inner join siniestrovehiculoconductor SVC on SVC.idSiniestro = Siniestro.idSiniestro 
inner join Conductor on SVN.DNI = Conductor.DNI
inner join Licencia on Conductor.DNI = Licencia.DNI
where tipocolision.Descripcion = modalidad;
END