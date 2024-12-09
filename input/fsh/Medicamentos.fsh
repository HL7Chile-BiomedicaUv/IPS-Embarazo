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
 
* code from VSMedicamentos (preferred)
* code ^short = "Medicación administrada o que se iba a administrar la paciente durante su embarazo. Si el estado de su embarazo es desconocido, no embarazada o un posible embarazo, especificar que no consume medicamentos o si es que consume otro."
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(MedicationsUvIps)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Códigos de medicamentos como extensión SNOMED."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"

* status 1..1 MS