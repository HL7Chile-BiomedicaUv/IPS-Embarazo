Alias: $ResumenEmbarazo = http://hl7.org/fhir/uv/ips/ValueSet/pregnancies-summary-uv-ips

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

* code.extension contains FechaAntecedente named FechaAntecedente 0..1 MS
* code.extension[FechaAntecedente] ^short = "Fecha del antecedente de una gestación anterior de la paciente"
//* code.extension[FechaAntecedente].value[x] ^binding.description = "Es usado para especificar la fecha de una gestación anterior de la paciente."

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueQuantity 1..1 MS
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"

* extension contains AntecedentesDePartos named AntecedentesDePartos 1..1 MS
* extension[AntecedentesDePartos] ^short = "Antecedente relacionado al tipo de parto"
* extension[AntecedentesDePartos].value[x] from VSPartos (preferred)
* extension[AntecedentesDePartos].value[x] ^binding.description = "Es usado para especificar antecedentes respecto al o los tipos de parto que ha tenido la paciente."

* extension contains NumeroDePartos named NumeroDePartos 1..1 MS
* extension[NumeroDePartos] ^short = "Número de partos que ha tenido la paciente"
