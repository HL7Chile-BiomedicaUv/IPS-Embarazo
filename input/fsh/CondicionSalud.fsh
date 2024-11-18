Profile: CondicionSaludCL
Parent: ConditionClIps
Id: Condicion-de-salud-cl-ips
Title: "Condición de salud (Embarazo-CL)"
Description: "Perfil del uso de medicamentos basado en la IPS chilena. Este perfil restringe el recurso MedicationStatement para representar el uso de medicamentos por parte de la paciente."

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
* code from VSPatologias
  * ^binding.description = "Código para una condición clínica (o problema ausente/desconocido) proveniente de SNOMED CT."

* extension contains CondicionPostParto named CondicionPostParto 1..1 MS
* extension[CondicionPostParto] ^short = "Condición post parto anterior de la paciente en caso de que haya sufrido alguna."