Profile: EstadoEmbarazoCL
Parent: ObservationEstadoEmbarazoClIps
Id: Estado-del-embarazo-cl-ips
Title: "Estado del Embarazo (Embarazo-CL)"
Description: "Perfil de estado del embarazo basado en la IPS chilena. Este perfil restringe el recurso Observación para representar el estado en el que se encuentra la paciente, dependiendo de la observación."

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

* extension contains SignosYSintomasPaciente named SignosYSintomasPaciente 0..* MS
* extension[SignosYSintomasPaciente] ^short = "Signos y/o Síntomas de la paciente de acuerdo a su estado."
