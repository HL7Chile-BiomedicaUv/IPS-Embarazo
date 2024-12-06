Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: TiposDePartos = 	https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/TipoDePartos

Instance:    ResultadoEmbarazoEjemplo
InstanceOf:  ResultadosEmbarazosCL
Usage:       #example
Title:       "Observación: Resultado de Embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre un resumen de los resultados de embarazo del paciente"

* status = #final

//* code
  //* coding[0] = loinc#11640-0 "[#] Births total"
  //* text[0] = "[#] Nacimientos totales"

* code
  * coding = loinc#11612-9 "[#] Abortions"
  * text = "[#] Abortos"

* code.extension.url = TiposDePartos
* code.extension.valueCodeableConcept = snomed#48782003 "Delivery normal"

* subject = Reference(Paciente-Emb-Ejemplo)
* effectiveDateTime = "2022-08-18"
* performer = Reference(Prestador-Emb-Ejemplo)

* valueQuantity.value = 1
* valueQuantity.unit = "Aborto"
* valueQuantity.system = ucum
* valueQuantity.code = #1 //se refiere al numero de nacimientos totales segun el codigo de arriba
