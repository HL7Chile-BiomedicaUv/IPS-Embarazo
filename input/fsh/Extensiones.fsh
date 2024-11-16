Extension: Edad
Id: Edad
Title: "Edad del paciente"
Description: "Proporciona la edad de la paciente"
Context: Patient

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Edad del paciente"
* . ^definition = "Proporciona la edad de la paciente"
* value[x] only integer
* value[x] MS

Extension: FechaUltimaRegla
Id: FechaUltimaRegla
Title: "Fecha de la última menstruación de la paciente"
Description: "Proporciona la fecha de la última menstruación para el cálculo de las semanas de gestación de la paciente."
Context: Observation

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Fecha de última menstruación"
* . ^definition = "Proporciona la fecha de la última menstruación o regla de la paciente para el cálculo de las semanas de gestación."

* value[x] only CodeableConceptIPS
* value[x] MS