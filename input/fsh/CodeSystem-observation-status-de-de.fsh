Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: ObservationStatusdeDE
Id: observation-status-de-de
Title: "Status der Beobachtung"
Description: "Das Kodesystem Status der Beobachtung (ObservationStatus) beschreibt den Stand der Bearbeitung oder des Lebenszyklus einer Beobachtung bzw. eines Untersuchungsergebnisses."
* ^url = "http://fhir.de/CodeSystem/observation-status-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/observation-status|4.0.1"
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

* #registered
* #registered ^designation[0].language = #de-DE
* #registered ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #registered ^designation[0].value = "Registriert"

* #preliminary
* #preliminary ^designation[0].language = #de-DE
* #preliminary ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #preliminary ^designation[0].value = "Vorläufig"

* #final
* #final ^designation[0].language = #de-DE
* #final ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #final ^designation[0].value = "Abgeschlossen"

* #amended
* #amended ^designation[0].language = #de-DE
* #amended ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #amended ^designation[0].value = "Geändert"

* #corrected
* #corrected ^designation[0].language = #de-DE
* #corrected ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #corrected ^designation[0].value = "Korrigiert"

* #cancelled
* #cancelled ^designation[0].language = #de-DE
* #cancelled ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #cancelled ^designation[0].value = "Storniert"

* #entered-in-error
* #entered-in-error ^designation[0].language = #de-DE
* #entered-in-error ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #entered-in-error ^designation[0].value = "Irrtümliche Eingabe"

* #unknown
* #unknown ^designation[0].language = #de-DE
* #unknown ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #unknown ^designation[0].value = "Unbekannt"
