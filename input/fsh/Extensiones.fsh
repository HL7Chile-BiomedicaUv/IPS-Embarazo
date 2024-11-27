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

Extension: FechaAntecedente
Id: FechaAntecedente
Title: "Fecha del antecedente de otras gestaciones especificado por la paciente"
Description: "Proporciona la fecha del antecente especificado por la paciente sobre otras gestaciones que ha tenido."
Context: Observation

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Fecha del antecedente proveniente de otra gestación"
* . ^definition = "Proporciona la fecha del antecedente proveniente de otra gestación de la paciente."

* value[x] only dateTime
* value[x] MS

Extension: AntecedentesDePartos
Id: AntecedentesDePartos
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

Extension: NumeroDePartos
Id: NumeroDePartos
Title: "Número de partos"
Description: "Proporciona el número de partos de acuerdo al tipo de parto de la paciente"
Context: Observation

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Número de partos"
* . ^definition = "Proporciona el número de partos de acuerdo al tipo de parto de la paciente"
* value[x] only integer
* value[x] MS

Extension: CondicionPostParto
Id: CondicionPostParto
Title: "Condición post-parto anterior"
Description: "Proporciona si es que la paciente qeudó con alguna condición del post-parto anterior."
Context: Observation

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Condición post-parto anterior"
* . ^definition = "Proporciona si es que la paciente quedó con alguna condición del post-parto anterior."
* value[x] only string
* value[x] MS

Extension: DetallesProcedimiento
Id: DetallesProcedimiento
Title: "Detalles del procedimiento"
Description: "Detalles escritos sobre el procedimiento que se realizó la paciente."
Context: Procedure

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Condición post-parto anterior"
* . ^definition = "Proporciona si es que la paciente quedó con alguna condición del post-parto anterior."
* value[x] only string
* value[x] MS

Extension: SignosYSintomasPaciente
Id: SignosYSintomasPaciente
Title: "Signos y/o Síntomas de la paciente."
Description: "Signos y/o Síntomas asociados al estado de embarazo en el que se encuentra la paciente."
Context: Observation

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Signos y/o Síntomas"
* . ^definition = "Permite escribir Signos y/o Síntomas asociados al estado de embarazo en el que se encuentra la paciente."
* value[x] only string
* value[x] MS