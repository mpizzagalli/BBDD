Repo para el tp1 de bases de datos.

## *TO DO:*

* Hacer las aclaraciones sobre cosas que asumimos en el informe
* AGREGAR restricciones en lenguaje natural QUE FALTEN en el informe
* Poner datos en la DB de manera que se puedan hacer los puntos siguientes
  * Consulta por número de licencia: obtener, con un número de licencia específico,
    información sobre los accidentes en los que ha participado el conductor propietario de
    la misma, con detalles de fecha, lugar, tipo de accidente, participación y modalidad.
    También se deberá indicar la cantidad de automóviles que está habilitado a conducir. Resuelto (Gaston)
  * Consulta por modalidad de accidentes viales: obtener, dada una modalidad de
    accidente (atropello, vuelco, incendio, caída del ocupante, etc), un listado de licencias
    de conducir y la cantidad de veces que cada una de estas licencias incurrió en la
    modalidad consultada.  Resuelto(Gaston)
  * Resolución de alguna de las implicancias/restricciones del problema utilizando triggers. TODO(Gaston)
* Pulir el informe
* Cambiar el campo TipoColision.Descipcion por TipoColision.Descripcion. Resuelto(Gaston) ALTER TABLE `tp1`.`tipocolision` 
                                  CHANGE COLUMN `Descipcion` `Descripcion` VARCHAR(200) NOT NULL COMMENT '' ;
* AGREGAR cualquier tipo de asumpcion sobre el dominio del problema que hayamos tomado.

