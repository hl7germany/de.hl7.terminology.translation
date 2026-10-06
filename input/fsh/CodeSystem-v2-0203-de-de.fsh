Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: IdentifierTypedeDE
Id: v2-0203-de-de
Title: "Typ des Identifiers"
Description: "Das Kodesystem Typ des Identifiers (IdentifierType) beschreibt standardisierte Typen von Identifikatoren zur eindeutigen Kennzeichnung von Personen, Organisationen, Versicherungen, Fällen, Dokumenten, Proben und anderen Entitäten im Gesundheitswesen."
* ^url = "http://fhir.de/CodeSystem/v2-0203-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/v2-0203|5.0.0"
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

* #ACSN
* #ACSN ^designation[0].language = #de-DE
* #ACSN ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #ACSN ^designation[0].value = "Eingangs-ID"

* #BSNR
* #BSNR ^designation[0].language = #de-DE
* #BSNR ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #BSNR ^designation[0].value = "Betriebsstättennummer"

* #FILL
* #FILL ^designation[0].language = #de-DE
* #FILL ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #FILL ^designation[0].value = "Identifikator des Auftragnehmers"

* #LACSN
* #LACSN ^designation[0].language = #de-DE
* #LACSN ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #LACSN ^designation[0].value = "Laborzugangs-ID"

* #MCN
* #MCN ^designation[0].language = #de-DE
* #MCN ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #MCN ^designation[0].value = "Mikrochip-Nummer"

* #PLAC
* #PLAC ^designation[0].language = #de-DE
* #PLAC ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #PLAC ^designation[0].value = "Identifikator des Auftraggebers"

* #SID
* #SID ^designation[0].language = #de-DE
* #SID ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #SID ^designation[0].value = "Proben-ID"

* #SNO
* #SNO ^designation[0].language = #de-DE
* #SNO ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #SNO ^designation[0].value = "Seriennummer"

* #USID
* #USID ^designation[0].language = #de-DE
* #USID ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #USID ^designation[0].value = "Eindeutige Proben-ID"

* #RI
* #RI ^designation[0].language = #de-DE
* #RI ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #RI ^designation[0].value = "Ressourcen-Identifikator"
