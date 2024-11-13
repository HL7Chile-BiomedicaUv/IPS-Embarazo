Alias: Edad =  https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Edad

Profile: PacienteEmbCL
Parent: PacienteCLIps
Id: Paciente-embarazo-cl-ips
Title: "Paciente (Embarazo-CL)"
Description: "Perfil de paciente basado en la IPS chilena. Este perfil restringe el recurso Paciente para representar a la paciente de acuerdo a su estado de embarazo, o en cualquier otro caso, dependiendo de su estado ligado a una observación."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier 1..* MS //EL paciente puede tener más de un identificador; suele ser el RUN nacional
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* name 1..1 MS
//* name obeys ips-pat
* name ^requirements = "Debe siempre existir un nombre sobre el cual se pueda requerir información del paciente"
* name.text MS
* name.text ^definition = "En caso de no poderse describir adecuadamente el nombre se puede escribir en este campo de texto como lo interpreta el registrador"
* name.text ^min = 0
* name.family 0..1 MS
* name.given 1..* MS
* name.given ^min = 1
* name[NombreOficial].given 1..*

* birthDate 1..1 MS

* extension ^short = "Edad del paciente"
* extension contains Edad named Edad 0..1 MS

* address MS

//Invariant: ips-pat-1
//Description: "Patient.name.given, Patient.name.family o Patient.name.text DEBEN estar presentes"
//Severity: #error
//Expression: "family.exists() or given.exists() or text.exists()"