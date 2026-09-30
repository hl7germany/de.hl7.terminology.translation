Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: ConditionVerificationStatusdeDE
Id: condition-ver-status-de-de
Title: "Diagnosesicherheit"
Description: "Das Kodesystem Diagnosesicherheit (ConditionVerificationStatus) beschreibt den Verifizierungsstatus bzw. aktuellen Erkenntnisstand für die Dokumentation einer Erkrankung, einer Diagnose oder eines Gesundheitszustands."
* ^url = "http://fhir.de/CodeSystem/condition-ver-status-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/condition-ver-status|2.0.1"
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

* #unconfirmed
* #unconfirmed ^designation[0].language = #de-DE
* #unconfirmed ^designation[0].use = $designation-usage|4.2.0#display
* #unconfirmed ^designation[0].value = "Unbestätigt"

* #provisional
* #provisional ^designation[0].language = #de-DE
* #provisional ^designation[0].use = $designation-usage|4.2.0#display
* #provisional ^designation[0].value = "Vorläufig"

* #differential
* #differential ^designation[0].language = #de-DE
* #differential ^designation[0].use = $designation-usage|4.2.0#display
* #differential ^designation[0].value = "Differenzial"

* #confirmed
* #confirmed ^designation[0].language = #de-DE
* #confirmed ^designation[0].use = $designation-usage|4.2.0#display
* #confirmed ^designation[0].value = "Bestätigt"

* #refuted
* #refuted ^designation[0].language = #de-DE
* #refuted ^designation[0].use = $designation-usage|4.2.0#display
* #refuted ^designation[0].value = "Ausgeschlossen"

* #entered-in-error
* #entered-in-error ^designation[0].language = #de-DE
* #entered-in-error ^designation[0].use = $designation-usage|4.2.0#display
* #entered-in-error ^designation[0].value = "Fehleingabe"
