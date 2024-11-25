Profile: BundleDocumentoEmbCL
Parent: Bundle
Id: BundleEmb-documento-ips-cl
Title: "Bundle Resumen Clínico"
Description: """
Este perfil representa las restricciones aplicadas al recurso Bundle por la Guía de Implementación FHIR del Resumen Clínico de Pacientes Embarazadas, incluyendo restricciones locales de chile, para ser aplicado a nivel nacional.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clembarazos/ImplementationGuide/hl7.fhir.cl.clembarazos"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clembarazos/ImplementationGuide/hl7.fhir.cl.clembarazos"

* identifier 1..1 MS
  * ^short = "Identificador persistente para el documento"

* type 1..1 MS
  * ^short = "Tipo de Bundle. En este caso es un documento"
* type = #document
* timestamp 1..1 MS
  * ^short = "Fecha y hora de la creación del documento"
* entry 1..* MS
  * ^short = "Entradas del documento"
  * fullUrl 1.. MS
    * ^short = "URI para el recurso"
  * search 0..0
  * request 0..0 
  * response 0..0
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Identificador de tipo de documento"
* entry ^slicing.ordered = false

* entry contains
  composition 1..1 and
  patient 1..1 and
  allergyintolerance 0..* and
  condition 0..* and
  medication 0..* and
  medicationstatement 0..* and
  practitioner 0..* and
  practitionerrole 0..* and
  procedimientos 0..* and
  organization 0..* and
  observation-pregnancy-edd 0..* and
  observation-pregnancy-outcome 0..* and
  observation-pregnancy-status 0..* and
  observation-alcohol-use 0..* and
  observation-tobacco-use 0..*

* entry[composition]
  * resource 1..1
    * ^short = "Composition del Resumén Internacional de Paciente versión adaptado a Chile"
  * resource only Composition-cl-ips

* entry[patient]
  * resource 1..1
    * ^short = "Información del Demografica del Paciente"
  * resource only Paciente-cl-ips

* entry[allergyintolerance]
  * resource 1..  
    * ^short = "Alergias del Paciente"
  * resource only AllergiaInt-cl-ips

* entry[condition]
  * resource 1..
    * ^short = "Condiciones del Paciente"
  * resource only Condition-cl-ips

* entry[medication]
  * resource 1..
    * ^short = "Medicamentos utilizados en registros o prescripciones para el Paciente"
  * resource only Medicamento-cl-ips

* entry[medicationstatement]
  * resource 1..
    * ^short = "Historial de Medicamentos del Paciente"
  * resource only RegMedicamentos-cl-ips

* entry[practitioner]
  * resource 1..
    * ^short = "Profesionales de la Salud"
  * resource only Prestador-cl-ips

* entry[practitionerrole]
  * resource 1..
    * ^short = "Roles de los Profesionales de la Salud"
  * resource only RolPrestador-cl-ips

* entry[procedimientos]
  * resource 1..
    * ^short = "Histotial de procedimientos realizados al paciente"
  * resource only Procedimientos-cl-ips

* entry[organization]
  * resource 1..
    * ^short = "Organizaciones de la Salud"
  * resource only Organizacion-cl-ips

* entry[observation-pregnancy-edd]
  * resource 1..
    * ^short = "Observaciones sobre la fecha estimada de parto"
  * resource only Observation-embarazo-fecha-estimada-de-parto-cl-ips

* entry[observation-pregnancy-outcome]
  * resource 1..
    * ^short = "Observaciones sobre resultados del embarazo"
  * resource only Observation-resultado-del-embarazo-cl-ips

* entry[observation-pregnancy-status]
  * resource 1..
    * ^short = "Observaciones sobre el estado del embarazo"
  * resource only Observation-estado-del-embarazo-cl-ips

* entry[observation-alcohol-use]
  * resource 1..
    * ^short = "Observaciones sobre el consumo de alcohol"
  * resource only Observation-uso-de-alcohol-cl-ips

* entry[observation-tobacco-use]
  * resource 1..
    * ^short = "Observaciones sobre el consumo de tabaco"
  * resource only Observation-uso-de-tabaco-cl-ips








