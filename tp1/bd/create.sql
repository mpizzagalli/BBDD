/* SCRIPT PARA CREAR LAS TABLAS
    Para hacer mas rapido, lo pueden correr como:
    # mysql -u user -p pass < create.sql
    Eso les crea las tablas en la instancia de mysql
        corriendo en localhost.
*/
create database tp1;
use tp1;

source tp1.Poliza.sql
source tp1.Acompañante.sql
source tp1.Ruta.sql
source tp1.Antecedente.sql
source tp1.SiniestroAcompañante.sql
source tp1.Autopista.sql
source tp1.SiniestroPeaton.sql
source tp1.Calle.sql
source tp1.Siniestro.sql
source tp1.Categoria.sql
source tp1.SiniestroTestigo.sql
source tp1.CompaniaAseguradora.sql
source tp1.SiniestroVehiculoConductor.sql
source tp1.CondicionGeneral.sql
source tp1.Testigo.sql
source tp1.ConductorHabilitado.sql
source tp1.TipoAccidente.sql
source tp1.Conductor.sql
source tp1.TipoCausaProbable.sql
source tp1.Denuncia.sql
source tp1.TipoCobertura.sql
source tp1.EstadoIluminacion.sql
source tp1.TipoColision.sql
source tp1.FueRealizadoPor.sql
source tp1.TipoCondicionClimatica.sql
source tp1.Funcionario.sql
source tp1.TipoEstadoVia.sql
source tp1.Informe.sql
source tp1.TipoInforme.sql
source tp1.Infraccion.sql
source tp1.TipoInfraccion.sql
source tp1.Licencia.sql
source tp1.TipoLicencia.sql
source tp1.Lugar.sql
source tp1.TipoPavimento.sql
source tp1.Organismo.sql
source tp1.TipoVehiculo.sql
source tp1.Peaton.sql
source tp1.Vehiculo.sql
source tp1.Persona.sql
source tp1.ViaPublica.sql

