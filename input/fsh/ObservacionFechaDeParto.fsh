Alias: $FechaEstimadaParto = http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips

Profile: FechaEstimadaPartoCL
Parent: ObservationEmbarazoFechaEstimadaDePartoClIps
Id: Fecha-estimada-de-parto-cl-ips
Title: "Fecha Estimada de Parto (Embarazo-CL)"
Description: "Perfil de la fecha estimada de parto basado en la IPS chilena. Este perfil restringe el recurso Observación para representar la fecha estimada de parto de la paciente que se encuentra embarazada."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
* code only CodeableConceptIPS
* code from $FechaEstimadaParto (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "Códigos de fecha estimada de parto"
* code ^binding.description = "Representa los códigos para la fecha estimada de parto."

//HACER PERFIL PARA FECHA DE ULTUMA REGLA
* code.extension contains FechaUltimaRegla named FechaUltimaRegla 0..1 MS
* code.extension[FechaUltimaRegla] ^short = "Fecha de última regla de la paciente"
* code.extension[FechaUltimaRegla].value[x] from VSFechaUltimaRegla (preferred)
* code.extension[FechaUltimaRegla].value[x] ^binding.description = "Es usado para especificar la fecha de última regla de la paciente para calcular las semanas de gestación."

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueDateTime 1..1 MS
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"
