Profile: EstadoEmbarazoCL
Parent: ObservationEstadoEmbarazoClIps
Id: Estado-del-embarazo-cl-ips
Title: "Estado del Embarazo (Embarazo-CL)"
Description: "Perfil de paciente basado en la IPS chilena. Este perfil restringe el recurso Paciente para representar a la paciente de acuerdo a su estado de embarazo, o en cualquier otro caso, dependiendo de su estado ligado a una observación."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueCodeableConcept  1..1 MS
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from PregnancyStatusUvIps (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"

