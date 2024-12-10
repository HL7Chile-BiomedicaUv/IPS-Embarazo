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


Extension: ProcedimientosParto
Id: ProcedimientosParto
Title: "Procedimiento de acuerdo al tipo de parto de la paciente"
Description: "Proporciona el procedimiento respecto al o los tipos de parto que ha tenido la paciente."
Context: Procedure

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Procedimiento relacionado al tipo de parto"
* . ^definition = "Proporciona el procedimiento respecto al o los tipos de parto que ha tenido la paciente."

* value[x] only CodeableConceptIPS
* value[x] MS
* value[x] from VSProcedecimientoTipoParto (preferred)

Extension: FechaProcedimientoParto
Id: FechaProcedimientoParto
Title: "Fecha del procedimiento de parto de la paciente"
Description: "Proporciona la fecha del procedimiento de parto que ha tenido la paciente."
Context: Procedure

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Procedimiento relacionado al tipo de parto"
* . ^definition = "Proporciona el procedimiento respecto al o los tipos de parto que ha tenido la paciente."

* value[x] only dateTime
* value[x] MS