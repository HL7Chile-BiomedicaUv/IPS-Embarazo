Alias: CSEspecialidadesDeis = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL
Alias: CSEspecialidadesConacem = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/EspecialidadesConacemConaceoCS

ValueSet: VSRolProfesional
Id: VSRolProfesionalIPS
Title: "Rol del profesional"
Description: "Códigos sobre el rol del profesional definidos en Snomed-CT."

* ^experimental = false
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

//* include codes from system http://snomed.info/sct

* SNOMED_CT_INT#6816002 "Specialized nurse"
* SNOMED_CT_INT#11935004 "Obstetrician"
* SNOMED_CT_INT#69280009 "Specialized physician"
* SNOMED_CT_INT#75271001 "Professional midwife"
* SNOMED_CT_INT#83685006 "Gynecologist"
* SNOMED_CT_INT#106292003 "Professional nurse"
* SNOMED_CT_INT#106294002 "Midwifery personnel"
* SNOMED_CT_INT#158969006 "Consultant gynecology and obstetrics"
* SNOMED_CT_INT#158995008 "Staff midwife"
* SNOMED_CT_INT#224536005 "Midwifery tutor"
* SNOMED_CT_INT#224544005 "Family planning nurse"
* SNOMED_CT_INT#224570006 "Clinical nurse specialist"
* SNOMED_CT_INT#225727002 "Midwife counselor"
* SNOMED_CT_INT#309296004 "Family planning doctor"
* SNOMED_CT_INT#309367003 "Obstetrician and gynecologist"
* SNOMED_CT_INT#309452001 "Midwifery grade"	
* SNOMED_CT_INT#309453006 "Midwife"
* SNOMED_CT_INT#397903001 "Staff grade obstetrician"
//* SNOMED_CT_INT#158941003 "Matron - nursery"
* SNOMED_CT_INT#79898004  "Auxiliary midwife"

ValueSet: VSEspecialidadesEmb
Id: VSEspecialidadesEmbIPS
Title: "Especialidad del profesional"
Description: "Códigos sobre la especialidad del profesional definidos en Snomed-CT."

* ^experimental = false
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSEspecialidadesDeis
* include codes from system CSEspecialidadesConacem

* CSEspecialidadesDeis#22 "Ginecología Pediátrica y de la Adolescencia"
* CSEspecialidadesDeis#28 "Medicina Familiar"
* CSEspecialidadesDeis#34 "Medicina Materno Infantil"
* CSEspecialidadesDeis#43 "Obstetricia y Ginecología"
* CSEspecialidadesDeis#58 "Ginecología"
* CSEspecialidadesDeis#66 "Obstetricia"
* CSEspecialidadesConacem#24 "Ginecología Oncológica"
* CSEspecialidadesConacem#39 "Medicina Materno Fetal"
* CSEspecialidadesConacem#42 "Medicina Reproductiva"



//CodeSystem: CSEspecialidadesEmb
//Id: CSEspecialidadesEmbIPS
//Title: "Especialidad del profesional"
//Description: "Códigos sobre la especialidad del profesional definidos en Snomed-CT."





//CodeSystem: CSConsumoTabaco
//Id: CSConsumoTabaco
//Title: "Códigos de Consumo de Tabaco"
//Description: "Códigos de consumo de tabaco."

//* ^experimental = false
//* ^caseSensitive = true
//* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
//* ^status = #active
//* ^date = "2024-10-20T00:00:00-03:00"
//* ^contact.name = "HL7 Chile"
//* ^contact.telecom.system = #email
//* ^contact.telecom.value = "chair@hl7chile.cl"
//* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"





//Fecha estimada de parto: requerido
//Data absent reason: requerido
//Resultados embarazo: requerido

