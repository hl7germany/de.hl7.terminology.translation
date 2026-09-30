Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: ReferenceRangeAppliesTodeDE
Id: sex-parameter-for-clinical-use-de-de
Title: "Kollektivbezug der Richtgrenze"
Description: "Das Kodesystem Kollektivbezug der Richtgrenze (SexParameterforClinicalUse) definiert Parameter, die bei der klinischen Beurteilung bei Diagnostik, Befundinterpretation und Behandlung mit berücksichtigt werden sollen."
* ^url = "http://fhir.de/CodeSystem/sex-parameter-for-clinical-use-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use|2.0.0"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[0].valuePeriod.start = "2025-10-12"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate"
* ^extension[=].valueDate = "2026-09-29"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "HL7 Deutschland e.V."
* ^extension[=].valueContactDetail.telecom[0].system = #url
* ^extension[=].valueContactDetail.telecom[0].value = "http://hl7.de"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@hl7.de"
* ^contact[0].telecom[1].system = #url
* ^contact[0].telecom[1].value = "https://hl7.de/"

* #female-typical
* #female-typical ^designation[0].language = #de-DE
* #female-typical ^designation[0].use = $designation-usage|4.2.0#display
* #female-typical ^designation[0].value = "Anwendung eines frauentypischen Settings oder Referenzbereichs"

* #male-typical
* #male-typical ^designation[0].language = #de-DE
* #male-typical ^designation[0].use = $designation-usage|4.2.0#display
* #male-typical ^designation[0].value = "Anwendung eines männertypischen Settings oder Referenzbereichs"

* #specified
* #specified ^designation[0].language = #de-DE
* #specified ^designation[0].use = $designation-usage|4.2.0#display
* #specified ^designation[0].value = "Anwendung eines spezifischen Settings oder Referenzbereichs"
