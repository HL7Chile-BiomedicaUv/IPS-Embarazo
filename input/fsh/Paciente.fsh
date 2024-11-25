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
* identifier.use 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing para determinar otros tipos de identificadores como pasaporte, n° de ficha clínica, etc."
* identifier ^slicing.ordered = false

//Identificador RUN
* identifier contains RUN 0..1 MS
* identifier[RUN].system ^short = "Sistema donde está codificado el RUN"
* identifier[RUN].value ^short = "Número de RUN del paciente" //RUN
  * ^short = "RUN nacional como Identificador"

//Identificador Otro
* identifier contains OtrosIdentificadores 0..1 MS
* identifier[OtrosIdentificadores].system ^short = "Sistema donde está codificado el otro identificador"
* identifier[OtrosIdentificadores].value ^short = "Valor del otro identificador del paciente"
  * ^short = "Otro Tipo de Identificador"

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