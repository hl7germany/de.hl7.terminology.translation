Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: SpecimenStatusdeDE
Id: specimen-status-de-de
Title: "Status des Probenmaterials"
Description: "Das Kodesystem Status des Probenmaterials (SpecimenStatus) beschreibt den Status einer Probe zur Nutzung im diagnostischen oder laborbezogenen Kontext, nämlich ob diese verfügbar, weiter verwendbar ist oder irrtümlich erfasst wurde."
* ^url = "http://fhir.de/CodeSystem/specimen-status-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/specimen-status|4.0.1"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[0].valuePeriod.start = "2025-10-12"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate"
* ^extension[=].valueDate = "2026-10-01"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "HL7 Deutschland e.V."
* ^extension[=].valueContactDetail.telecom[0].system = #url
* ^extension[=].valueContactDetail.telecom[0].value = "http://hl7.de"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@hl7.de"
* ^contact[0].telecom[1].system = #url
* ^contact[0].telecom[1].value = "https://hl7.de/"

* #available
* #available ^designation[0].language = #de-DE
* #available ^designation[0].use = $designation-usage|4.2.0#display
* #available ^designation[0].value = "Verfügbar"

* #unavailable
* #unavailable ^designation[0].language = #de-DE
* #unavailable ^designation[0].use = $designation-usage|4.2.0#display
* #unavailable ^designation[0].value = "Nicht verfügbar"

* #unsatisfactory
* #unsatisfactory ^designation[0].language = #de-DE
* #unsatisfactory ^designation[0].use = $designation-usage|4.2.0#display
* #unsatisfactory ^designation[0].value = "Nicht geeignet"

* #entered-in-error
* #entered-in-error ^designation[0].language = #de-DE
* #entered-in-error ^designation[0].use = $designation-usage|4.2.0#display
* #entered-in-error ^designation[0].value = "Fehleingabe"
