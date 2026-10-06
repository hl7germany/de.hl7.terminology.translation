Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: CompositionAttestationModedeDE
Id: composition-attestation-mode-de-de
Title: "Freigabetyp"
Description: "Das Kodesystem Freigabetyp (CompositionAttestationMode) beschreibt die Rolle oder den Kontext, in dem eine Person oder Organisation die Authentizität oder die Richtigkeit eines Dokuments geprüft, bestätigt und gegebenenfalls die Verantwortung dafür übernommen hat."
* ^url = "http://fhir.de/CodeSystem/composition-attestation-mode-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/composition-attestation-mode|4.0.1"
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

// personal: keine deutsche Bezeichnung in der Quelldatei hinterlegt

// professional: keine deutsche Bezeichnung in der Quelldatei hinterlegt

* #legal
* #legal ^designation[0].language = #de-DE
* #legal ^designation[0].use = $designation-usage|4.2.0#display
* #legal ^designation[0].value = "Rechtliche Verantwortung"

// official: keine deutsche Bezeichnung in der Quelldatei hinterlegt
