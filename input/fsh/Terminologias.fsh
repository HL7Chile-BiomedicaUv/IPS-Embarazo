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

CodeSystem: CSFechaUltimaRegla
Id: CSFechaUltimaRegla
Title: "Códigos de Fecha de última regla (FUR)."
Description: "Códigos sobre la  Fecha de última regla (FUR)."

* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #FUR_OP "FUR Operacional"
* #FUR_GES "FUR Gestante"

ValueSet: VSFechaUltimaRegla
Id: VSFechaUltimaReglaIPS
Title: "Fecha última regla - FUR"
Description: "Códigos sobre fecha de última regla de la paciente de Snomed-CT."

* ^experimental = false
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* codes from system CSFechaUltimaRegla

ValueSet: VSPartos
Id: VSPartosIPS
Title: "Tipos de Partos"
Description: "Códigos sobre los de tipos de parto que pudo tener la paciente con anterioridad definidos en Snomed-CT."

* ^experimental = false
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* SNOMED_CT_INT#267015005  "Past pregnancy history of full term delivery"
* SNOMED_CT_INT#48782003 "Spontaneous vaginal delivery"
* SNOMED_CT_INT#282020008 "Premature delivery"
* SNOMED_CT_INT#289259007 "Vaginal delivery"
* SNOMED_CT_INT#200144004 "Cesarean delivery"
* SNOMED_CT_INT#48975005 "Stimulated labor"
* SNOMED_CT_INT#302383004 "Forceps delivery"
* SNOMED_CT_INT#260413007 "None"

ValueSet: VSPatologias
Id: VSPatologiasIPS
Title: "Condición de salud o patologías de la paciente"
Description: "Códigos sobre las condiciones o patologías que padece la paciente provenientes de Snomed-CT."

* ^experimental = false
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* SNOMED_CT_INT#73211009 "Diabetes mellitus"
* SNOMED_CT_INT#398254007 "Pre-eclampsia"
* SNOMED_CT_INT#235888006 "Cholestasis of pregnancy"
* SNOMED_CT_INT#22033007 "Fetal growth restriction"
* SNOMED_CT_INT#430881000 "Second trimester bleeding"
* SNOMED_CT_INT#297106006 "Primary infertility"
* SNOMED_CT_INT#297121000 "Secondary infertility"
* SNOMED_CT_INT#414916001 "Obesity"
* SNOMED_CT_INT#38341003 "Hypertensive disorder"
* SNOMED_CT_INT#84757009 "Epilepsy"
* SNOMED_CT_INT#234467004 "Thrombophilia"
* SNOMED_CT_INT#254837009 "Malignant tumor of breast"
* SNOMED_CT_INT#363354003 "Cancer of cervix"
* SNOMED_CT_INT#56265001 "Cardiopathy"
* SNOMED_CT_INT#49601007 "Cardiovascular disease"
* SNOMED_CT_INT#40733004 "Infectious disease" 
* SNOMED_CT_INT#56717001 "Tuberculosis"
* SNOMED_CT_INT#370992007 "Dyslipidemia"
* SNOMED_CT_INT#13644009 "Hypercholesterolemia"
* SNOMED_CT_INT#40930008 "Hypothyroidism"
* SNOMED_CT_INT#90708001 "Kidney disease"
* SNOMED_CT_INT#240658000 "Chronic Chagas' disease"
* SNOMED_CT_INT#240653009 "Acute Chagas' disease"
* SNOMED_CT_INT#74732009 "Mental disorder"
* SNOMED_CT_INT#199257008 "Mental disorders during pregnancy, childbirth and the puerperium"
* SNOMED_CT_INT#15927341000119106 "Carrier of sexually transmitted disease"
* SNOMED_CT_INT#8098009 "Sexually transmitted infectious disease"
* SNOMED_CT_INT#165816005 "HIV detected"
* SNOMED_CT_INT#76272004 "Syphilis"
* SNOMED_CT_INT#105629000 "Chlamydial infection"
* SNOMED_CT_INT#274116002 "Herpes in pregnancy"
* SNOMED_CT_INT#15628003 "Gonorrhea"
* SNOMED_CT_INT#114881000119108 "Maternal gonorrhea during pregnancy"
* SNOMED_CT_INT#237091009 "Infective vaginitis"
* SNOMED_CT_INT#721266009 "Infection of skin and mucous membrane caused by human papillomavirus"
* SNOMED_CT_INT#68566005 "Urinary tract infectious disease"
* SNOMED_CT_INT#894362851000119109 "COVID-19 during pregnancy"
* SNOMED_CT_INT#128046007 "Disease of oral mucosa"
* SNOMED_CT_INT#235053005 "Infectious disease of oral mucosa"
* SNOMED_CT_INT#160245001 "No current problems or disability"

ValueSet: VSDrogasBlandasYDuras
Id: VSDrogasBlandasYDurasIPS
Title: "Drogas duras y blandas."
Description: "Códigos sobre el consumo de drogas duras y blandas provenientes de Snomed-CT."

* ^experimental = false
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* SNOMED_CT_INT#449868002 "Smokes tobacco daily (finding)"
* SNOMED_CT_INT#428041000124106 "Occasional tobacco smoker (finding)"
* SNOMED_CT_INT#8517006 "Ex-smoker (finding)"
* SNOMED_CT_INT#266919005 "Never smoked tobacco (finding)"
* SNOMED_CT_INT#77176002 "Smoker (finding)"
* SNOMED_CT_INT#266927001 "Tobacco smoking consumption unknown (finding)"
* SNOMED_CT_INT#230063004 "Heavy cigarette smoker (finding)"
* SNOMED_CT_INT#230060001 "Light cigarette smoker (finding)"
* SNOMED_CT_INT#228377000 "Smokes drugs (finding)"
* SNOMED_CT_INT#307052004 "Illicit drug use (finding)"
* SNOMED_CT_INT#44870007 "Misused drugs in past (finding)"
* SNOMED_CT_INT#417284009 "Current drug user (finding)"
* SNOMED_CT_INT#361049005 "Habitual drug user (finding)"
* SNOMED_CT_INT#70545002 "Narcotic drug user (finding)"
* SNOMED_CT_INT#226034001 "Injecting drug user (finding)"
* SNOMED_CT_INT#105546006 "Occasional drug abuser (finding)"
* SNOMED_CT_INT#702771005 "Illicit drug use unknown (finding)"
* SNOMED_CT_INT#741063003 "Illicit drug injection in last 12 months (finding)"
* SNOMED_CT_INT#428493006 "Crack cocaine misuse (finding)"
* SNOMED_CT_INT#416246006 "Prolonged high dose use of cannabis (finding)"

ValueSet: VSUCUM
Id: VSUCUMIPS
Title: "Códigos UCUM sobre el consumo de alcohol"
Description: "Códigos UCUM sobre el consumo de alcohol."

* ^experimental = false 
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^status = #active
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from UCUM, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* UCUM#d "per day"
* UCUM#wk "per week"

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

