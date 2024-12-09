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


Extension: TipoDePartos
Id: TipoDePartos
Title: "Antecedentes de acuerdo al tipo de parto de la paciente"
Description: "Proporciona antecedentes respecto al o los tipos de parto que ha tenido la paciente."
Context: Observation

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Antecedente relacionado al tipo de parto"
* . ^definition = "Proporciona antecedentes respecto al o los tipos de parto que ha tenido la paciente."

* value[x] only CodeableConceptIPS
* value[x] MS
* value[x] from VSTipoParto (required)

