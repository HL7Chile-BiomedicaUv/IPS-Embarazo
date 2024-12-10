Alias: ProcedimientosParto = https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/ProcedimientosParto
Alias: FechaProcedimientoParto = https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/FechaProcedimientoParto
Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: urlextension = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: CSDataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason

Instance:    Procedimiento-Emb-Ejemplo
InstanceOf:  ProcedimientosEmbCL
Usage:       #example
Title:       "Procedimiento - Ejemplo"
Description: "Ejemplo sobre algún procedimiento al que se ha sometido la paciente."

* status = #unknown //desconocido

* code
  * coding = snomed#787480003 "No known procedures" //procedimiento
  * text = "No se conocen procedimientos"

* subject = Reference(Paciente-Emb-Ejemplo) //Quien se hizo el procedimiento

* performedDateTime.extension.url = urlextension //cuando se hizo el procedimiento
* performedDateTime.extension.valueCode = #unknown //Se espera que el valor exista pero se desconoce

* extension[ProcedimientosParto].url = ProcedimientosParto
* extension[ProcedimientosParto].valueCodeableConcept = snomed#11466000 "Cesarean section"
//* extension[ProcedimientosParto]coding.code = #11466000
//* extension[ProcedimientosParto]coding.display = "Cesarean section"
//* extension[ProcedimientosParto]coding.text = "Cesárea"

//* extension.url = FechaProcedimientoParto
//* extension[ProcedimientosParto].extension.valueDateTime = "2024-12-03"

* category
  * coding = snomed#386637004 "Obstetric procedure (procedure)" //procedimiento
  * text = "Procedimiento obstétrico"

* note.text = """
### NOTA:
La paciente desconoce o no se ha realizado procedimientos quirúrgicos, sin embargo, se realizó una cesárea el día 03 de diciembre del presente año.
"""

