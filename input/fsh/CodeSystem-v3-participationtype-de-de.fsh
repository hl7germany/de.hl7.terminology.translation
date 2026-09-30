Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: ParticipationTypedeDE
Id: v3-participationtype-de-de
Title: "Art der Beteiligung"
Description: "Das Kodesystem Art der Beteiligung (ParticipationType) beschreibt die Art oder Rolle der Beteiligung, die eine Person oder ein System übernimmt."
* ^url = "http://fhir.de/CodeSystem/v3-participationtype-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType|7.0.0"
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

* #VRF
* #VRF ^designation[0].language = #de-DE
* #VRF ^designation[0].use = $designation-usage|4.2.0#display
* #VRF ^designation[0].value = "Verifizierende Person"
