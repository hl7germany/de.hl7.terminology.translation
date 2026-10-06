Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: DeviceNametypedeDE
Id: device-nametype-de-de
Title: "Art der Bezeichnung des Geräts"
Description: "Das Kodesystem Art der Bezeichnung des Gerätes (DeviceNameType) beschreibt die Art des Namens für ein Analysegerät oder Medizinprodukt, wie er von offiziellen Stellen, von Patienten oder von Laien verwendet wird."
* ^url = "http://fhir.de/CodeSystem/device-nametype-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/device-nametype|4.0.1"
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

* #udi-label-name
* #udi-label-name ^designation[0].language = #de-DE
* #udi-label-name ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #udi-label-name ^designation[0].value = "UDI Kennzeichnungsname"

* #user-friendly-name
* #user-friendly-name ^designation[0].language = #de-DE
* #user-friendly-name ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #user-friendly-name ^designation[0].value = "Benutzerfreundlicher Name"

* #patient-reported-name
* #patient-reported-name ^designation[0].language = #de-DE
* #patient-reported-name ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #patient-reported-name ^designation[0].value = "PatientInberichteter Name"

* #manufacturer-name
* #manufacturer-name ^designation[0].language = #de-DE
* #manufacturer-name ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #manufacturer-name ^designation[0].value = "Herstellername"

* #model-name
* #model-name ^designation[0].language = #de-DE
* #model-name ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #model-name ^designation[0].value = "Modellname"

* #other
* #other ^designation[0].language = #de-DE
* #other ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #other ^designation[0].value = "Sonstige"
