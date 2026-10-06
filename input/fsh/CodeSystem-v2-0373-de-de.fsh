Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: TreatmentdeDE
Id: v2-0373-de-de
Title: "Probenverarbeitungsmethode"
Description: "Das Kodesystem Probenverarbeitungsmethode (Treatment) beschreibt Behandlungs- und Aufbereitungsschritte, die während der Laborverarbeitung an einer Probe durchgeführt wurden."
* ^url = "http://fhir.de/CodeSystem/v2-0373-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/v2-0373|3.0.0"
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

* #ACID
* #ACID ^designation[0].language = #de-DE
* #ACID ^designation[0].use = $designation-usage|4.2.0#display
* #ACID ^designation[0].value = "Aufsäuerung"

* #ALK
* #ALK ^designation[0].language = #de-DE
* #ALK ^designation[0].use = $designation-usage|4.2.0#display
* #ALK ^designation[0].value = "Alkalisierung"

* #DEFB
* #DEFB ^designation[0].language = #de-DE
* #DEFB ^designation[0].use = $designation-usage|4.2.0#display
* #DEFB ^designation[0].value = "Defibrinierung"

* #FILT
* #FILT ^designation[0].language = #de-DE
* #FILT ^designation[0].use = $designation-usage|4.2.0#display
* #FILT ^designation[0].value = "Filtration"

* #LDLP
* #LDLP ^designation[0].language = #de-DE
* #LDLP ^designation[0].use = $designation-usage|4.2.0#display
* #LDLP ^designation[0].value = "LDL-Ausfällung"

* #NEUT
* #NEUT ^designation[0].language = #de-DE
* #NEUT ^designation[0].use = $designation-usage|4.2.0#display
* #NEUT ^designation[0].value = "Neutralisierung"

* #RECA
* #RECA ^designation[0].language = #de-DE
* #RECA ^designation[0].use = $designation-usage|4.2.0#display
* #RECA ^designation[0].value = "Rekalkifizierung"

* #UFIL
* #UFIL ^designation[0].language = #de-DE
* #UFIL ^designation[0].use = $designation-usage|4.2.0#display
* #UFIL ^designation[0].value = "Ultrafiltration"
