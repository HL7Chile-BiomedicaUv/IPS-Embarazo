Profile: ProcedimientosTipoDePartoEmbCL
Parent: ProcedimientosClIps
Id: Procedimientos-tipo-parto-cl-ips
Title: "Antecedentes: Procedimiento por tipo de parto (Embarazo-CL)"
Description: "Perfil de antecedentes de procedimientos basado en la IPS chilena. Este perfil restringe el recurso Procedimientos para representar antecedentes según el tipo de parto que haya tenido la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
//SE ELIMINO LA EXTENSION PARA DETALLES DE PROCEDIMIENTO DEJANDO NOTE
* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* code 1..1 MS
* code only CodeableConceptIPS
* code from VSTipoParto (preferred)

* performed[x] 1..1 MS //fecha en la que se realizó el procedimiento, o sea, la fecha de nacimiento del bebé
* performed[x] only dateTime
* performed[x] ^short = "Fecha en la que se realizó el procedimiento. En este caso también representa la fecha de nacimiento del bebé."

//Persona que realiza la declaración el procedimiento
* asserter only Reference(PacienteEmbCL or RelatedPerson or PrestadorEmbCL or CoreRolClinicoCl)

* performer
  * actor only Reference(PacienteEmbCL or RelatedPerson or PrestadorEmbCL or RolPrestadorEmbCL or OrganizacionEmbCL)
  * onBehalfOf only Reference(OrganizacionEmbCL) //orgnaizacion donde el profesional hizo el procedimiento

* category only CodeableConceptIPS
* category from VSCatProc (preferred)

* note 0..*
* note ^short = "Información/Detalles adicionales del procedimiento realizado a la paciente, en caso de que esta haya tenido un parto."