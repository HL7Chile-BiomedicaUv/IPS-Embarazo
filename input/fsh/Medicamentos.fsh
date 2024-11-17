Profile: MedicamentoCL
Parent: MedicamentoClIps
Id: Medicamento-embarazos-cl-ips
Title: "Medicamentos (Embarazo-CL)"
Description: "Perfil de medicamentos basado en la IPS chilena. Este perfil restringe el recurso Medicamento para representar los medicamentos que usa la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
* code only CodeableConceptIPS

* status 1..1 MS