Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: DiagnosticReportStatusdeDE
Id: diagnostic-report-status-de-de
Title: "Status des Untersuchungsbefunds"
Description: "Das Kodesystem Status des Untersuchungsbefunds (DiagnosticReportStatus) kennzeichnet den Bearbeitungs- oder Freigabestatus eines Dokuments im Lebenszyklus eines diagnostischen Untersuchungsbefunds."
* ^url = "http://fhir.de/CodeSystem/diagnostic-report-status-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/diagnostic-report-status|4.0.1"
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
* #registered ^designation[0].use = $designation-usage|4.2.0#display
* #registered ^designation[0].value = "Registriert"

* #partial
* #partial ^designation[0].language = #de-DE
* #partial ^designation[0].use = $designation-usage|4.2.0#display
* #partial ^designation[0].value = "Unvollständig"

* #preliminary
* #preliminary ^designation[0].language = #de-DE
* #preliminary ^designation[0].use = $designation-usage|4.2.0#display
* #preliminary ^designation[0].value = "Vorläufig"

* #final
* #final ^designation[0].language = #de-DE
* #final ^designation[0].use = $designation-usage|4.2.0#display
* #final ^designation[0].value = "Final"

* #amended
* #amended ^designation[0].language = #de-DE
* #amended ^designation[0].use = $designation-usage|4.2.0#display
* #amended ^designation[0].value = "Überarbeitet"

* #corrected
* #corrected ^designation[0].language = #de-DE
* #corrected ^designation[0].use = $designation-usage|4.2.0#display
* #corrected ^designation[0].value = "Korrigiert"

* #appended
* #appended ^designation[0].language = #de-DE
* #appended ^designation[0].use = $designation-usage|4.2.0#display
* #appended ^designation[0].value = "Ergänzt"

* #cancelled
* #cancelled ^designation[0].language = #de-DE
* #cancelled ^designation[0].use = $designation-usage|4.2.0#display
* #cancelled ^designation[0].value = "Abgebrochen"

* #entered-in-error
* #entered-in-error ^designation[0].language = #de-DE
* #entered-in-error ^designation[0].use = $designation-usage|4.2.0#display
* #entered-in-error ^designation[0].value = "Fehleingabe"

* #unknown
* #unknown ^designation[0].language = #de-DE
* #unknown ^designation[0].use = $designation-usage|4.2.0#display
* #unknown ^designation[0].value = "Unbekannt"
