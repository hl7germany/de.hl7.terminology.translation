Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: DataAbsentReasondeDE
Id: data-absent-reason-de-de
Title: "Begründung Nichtverfügbarkeit"
Description: "Das Codesystem Begründung Nichtverfügbarkeit (DataAbsentReason) dient zur standardisierten Angabe eines Grundes, warum ein erwarteter Datenwert nicht vorhanden ist und übermittelt werden kann."
* ^url = "http://fhir.de/CodeSystem/data-absent-reason-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/data-absent-reason|2.0.0"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[0].valuePeriod.start = "2025-10-12"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate"
* ^extension[=].valueDate = "2026-10-01"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "HL7 Deutschland e.V."
* ^extension[=].valueContactDetail.telecom[0].system = #url
* ^extension[=].valueContactDetail.telecom[0].value = "http://hl7.de"
* insert LanguagePack
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@hl7.de"
* ^contact[0].telecom[1].system = #url
* ^contact[0].telecom[1].value = "https://hl7.de/"

* #unknown
* #unknown ^designation[0].language = #de-DE
* #unknown ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #unknown ^designation[0].value = "Unbekannt"

* #asked-unknown
* #asked-unknown ^designation[0].language = #de-DE
* #asked-unknown ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #asked-unknown ^designation[0].value = "Erfragt, aber unbekannt"

* #temp-unknown
* #temp-unknown ^designation[0].language = #de-DE
* #temp-unknown ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #temp-unknown ^designation[0].value = "Temporär unbekannt"

* #not-asked
* #not-asked ^designation[0].language = #de-DE
* #not-asked ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #not-asked ^designation[0].value = "Nicht erfragt"

* #asked-declined
* #asked-declined ^designation[0].language = #de-DE
* #asked-declined ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #asked-declined ^designation[0].value = "Erfragt, aber abgelehnt"

* #masked
* #masked ^designation[0].language = #de-DE
* #masked ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #masked ^designation[0].value = "Maskiert / vertraulich"

* #not-applicable
* #not-applicable ^designation[0].language = #de-DE
* #not-applicable ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #not-applicable ^designation[0].value = "Nicht anwendbar"

* #unsupported
* #unsupported ^designation[0].language = #de-DE
* #unsupported ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #unsupported ^designation[0].value = "Nicht unterstützt"

* #as-text
* #as-text ^designation[0].language = #de-DE
* #as-text ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #as-text ^designation[0].value = "Als Text"

* #error
* #error ^designation[0].language = #de-DE
* #error ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #error ^designation[0].value = "Fehler"

* #not-a-number
* #not-a-number ^designation[0].language = #de-DE
* #not-a-number ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #not-a-number ^designation[0].value = "Keine Zahl"

* #negative-infinity
* #negative-infinity ^designation[0].language = #de-DE
* #negative-infinity ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #negative-infinity ^designation[0].value = "Negativ unendlich"

* #positive-infinity
* #positive-infinity ^designation[0].language = #de-DE
* #positive-infinity ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #positive-infinity ^designation[0].value = "Positiv unendlich"

* #not-performed
* #not-performed ^designation[0].language = #de-DE
* #not-performed ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #not-performed ^designation[0].value = "Nicht durchgeführt"

* #not-permitted
* #not-permitted ^designation[0].language = #de-DE
* #not-permitted ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #not-permitted ^designation[0].value = "Nicht erlaubt"
