Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: ConditionClinicalStatusdeDE
Id: condition-clinical-de-de
Title: "Diagnose Klinischer Status"
Description: "Das Kodesystem Diagnose Klinischer Status (ConditionClinicalStatusCodes) beschreibt den klinischen Status einer Erkrankung, einer dokumentierten Diagnose oder eines Gesundheitszustandes."
* ^url = "http://fhir.de/CodeSystem/condition-clinical-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/condition-clinical|3.0.0"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[0].valuePeriod.start = "2025-10-12"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate"
* ^extension[=].valueDate = "2026-09-29"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "HL7 Deutschland e.V."
* ^extension[=].valueContactDetail.telecom[0].system = #url
* ^extension[=].valueContactDetail.telecom[0].value = "http://hl7.de"
* insert LanguagePack
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@hl7.de"
* ^contact[0].telecom[1].system = #url
* ^contact[0].telecom[1].value = "https://hl7.de/"

* #active
* #active ^designation[0].language = #de-DE
* #active ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #active ^designation[0].value = "Aktiv"

* #recurrence
* #recurrence ^designation[0].language = #de-DE
* #recurrence ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #recurrence ^designation[0].value = "Wiederholtes Auftreten"

* #relapse
* #relapse ^designation[0].language = #de-DE
* #relapse ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #relapse ^designation[0].value = "Rezidiv / Rückfall"

* #inactive
* #inactive ^designation[0].language = #de-DE
* #inactive ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #inactive ^designation[0].value = "Inaktiv"

* #remission
* #remission ^designation[0].language = #de-DE
* #remission ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #remission ^designation[0].value = "Remission"

* #resolved
* #resolved ^designation[0].language = #de-DE
* #resolved ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #resolved ^designation[0].value = "Nicht mehr vorhanden"

* #unknown
* #unknown ^designation[0].language = #de-DE
* #unknown ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #unknown ^designation[0].value = "Unbekannt"
