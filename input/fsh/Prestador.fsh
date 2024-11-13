Profile: Prestador
Parent: PrestadorClIps
Id: Prestador-embarazo-ips
Title: "Prestador Individual (Embarazo-CL)"
Description: "Perfil del prestador basado en la IPS chilena. Este perfil define como deben estructurarse los datos propios del prestador que brinda la atención a la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* name 1..1 MS
* name.family 1..1 MS
* name.given 1..* MS
