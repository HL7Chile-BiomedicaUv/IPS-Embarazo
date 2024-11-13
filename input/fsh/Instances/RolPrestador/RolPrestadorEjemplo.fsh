Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu
Alias: especialidad = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL

Instance:    RolProfesionalCLEjemplo
InstanceOf:  RolPrestadorEmbCL
Usage:       #example
Title:       "Rol Profesional Medicina Familiar - Ejemplo"
Description: "Ejemplo sobre el rol de un profesional de la salud, específicamente de medicina familiar."

* practitioner = Reference(PrestadorClIpsEjemplo) //hace referencia al prestador de salud

* organization = Reference(Organizacion-CL-Ejemplo) //hace referencia a la organizacion a la que pertenece el prestador

* code //Rol que cumple el profesional; especialidad
  * coding = snomed#11935004 "obstetra"
  //* text = "Medicina Familiar"