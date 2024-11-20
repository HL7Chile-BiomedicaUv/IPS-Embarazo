Profile: ProcedimientosEmbCL
Parent: ProcedimientosClIps
Id: Procedimientos-cl-ips
Title: "Antecedentes: Procedimientos (Embarazo-CL)"
Description: "Perfil de antecedentes quirúrgicos basado en la IPS chilena. Este perfil restringe el recurso Procedimientos para representar antecedentes quirúrgicos de la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* code 1..1 MS
* code only CodeableConceptIPS
* code from VSProcedimientos (preferred)

* performed[x] 1..1 MS
* performed[x] only dateTime or Period
* asserter only Reference(PacienteEmbCL or RelatedPerson or PrestadorEmbCL or CoreRolClinicoCl)
* performer
  * actor only Reference(PacienteEmbCL or RelatedPerson or  DispositivoObservadorClIps or PrestadorEmbCL or RolPrestadorEmbCL or OrganizacionEmbCL)
  * onBehalfOf only Reference(OrganizacionEmbCL)

* extension contains DetallesProcedimiento named DetallesProcedimiento 0..1 MS
* extension[DetallesProcedimiento] ^short = "Detalles del procedimiento que se realizó la paciente con anterioridad, en caso de haberse realizado uno."
