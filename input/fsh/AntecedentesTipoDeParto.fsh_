Profile: AntecedentesTipoDeParto
Parent: ObservacionCL
Id: Tipo-de-parto-cl-ips
Title: "Antecedentes sobre tipos de parto anteriores (Embarazo-CL)"
Description: "Perfil de antecedentes sobre tipos de partos basado en la IPS chilena. Este perfil restringe el recurso Observación para representar antecedentes sobre los tipos de parto que ha tenido la paciente, si es que tuvo un parto anterior."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* code 1..1 MS
* code from VSPartos (preferred)
* code ^binding.description = "Es usado para especificar antecedentes respecto al o los tipos de parto que ha tenido la paciente."

* effectiveDateTime 1..1 //Representa el momento o período clínico relevante (cuándo ocurrió el evento o medición clínica), por ejemplo, la medicion de la presion arterial se realizo en tal fecha, o la toma de una prueba se realizo entre tal y tal fecha

* valueInteger 1..1 MS
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"

* note 0..* 
* note ^short = "Información adicional en caso de que el tipo de parto así lo requiera."