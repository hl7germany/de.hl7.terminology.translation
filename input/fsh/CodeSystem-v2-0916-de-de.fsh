Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: RelevantClinicalInformationdeDE
Id: v2-0916-de-de
Title: "Nüchternstatus"
Description: "Das Kodesystem Nüchternstatus (RelevantClinicalInformation) beschreibt Angaben des Patienten oder der Patientin zum Nüchternstatus."
* ^url = "http://fhir.de/CodeSystem/v2-0916-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/v2-0916|3.0.0"
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

* #F
* #F ^designation[0].language = #de-DE
* #F ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #F ^designation[0].value = "Nüchtern"

* #FNA
* #FNA ^designation[0].language = #de-DE
* #FNA ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #FNA ^designation[0].value = "Aufforderung zur Nüchternheit nicht erfolgt"

* #NF
* #NF ^designation[0].language = #de-DE
* #NF ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #NF ^designation[0].value = "Nicht nüchtern"

* #NG
* #NG ^designation[0].language = #de-DE
* #NG ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #NG ^designation[0].value = "Nüchternstatus nicht abgefragt"
