Alias: $ResumenEmbarazo = http://hl7.org/fhir/uv/ips/ValueSet/pregnancies-summary-uv-ips
Alias: TipoDePartos = https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/TipoDePartos

Profile: ResultadosEmbarazosCL
Parent: ObservationResultadoEmbarazoClIps
Id: Resultados-de-embarazos-cl-ips
Title: "Resultados de Embarazos (Embarazo-CL)"
Description: "Perfil de resultados de embarazos basado en la IPS chilena. Este perfil restringe el recurso Observación para representar un resumen sobre resultados de embarazos de la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
* code from $ResumenEmbarazo (required)
* code only CodeableConceptIPS
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "Códigos de resultados de embarazos"
* code ^binding.description = "Representa los códigos sobre gestaciones anteriores que ha tenido la paciente."

* code.extension contains TipoDePartos named TipoDePartos 0..* MS
* code.extension[TipoDePartos] ^short = "Tipos de partos que ha tenido la paciente según los embarazos anteriores."
* code.extension[TipoDePartos] obeys Emb-partos-resultados-Invariant-1

//se eliminó la extension fecha de antecedente, dado que existe effective[x]
* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueQuantity 1..1 MS
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"


Invariant: Emb-partos-resultados-Invariant-1
Description: "La extensión TipoDePartos solo puede usarse si el código está en el conjunto permitido."
Severity: #error
Expression: "code.coding.exists(system = 'http://loinc.org' and code in {'11636-8', '11637-6', '11638-4', '11639-2', '11640-0'})"

