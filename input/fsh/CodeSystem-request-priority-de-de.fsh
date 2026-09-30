Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: RequestPrioritydeDE
Id: request-priority-de-de
Title: "Dringlichkeit der Anforderung"
Description: "Das Kodesystem Dringlichkeit der Anforderung (Request Priority) kennzeichnet die Priorität bzw. Dringlichkeit einer Anforderung, eines Auftrags oder einer Anfrage."
* ^url = "http://fhir.de/CodeSystem/request-priority-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/request-priority|4.0.1"
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

* #routine
* #routine ^designation[0].language = #de-DE
* #routine ^designation[0].use = $designation-usage|4.2.0#display
* #routine ^designation[0].value = "Routine"

* #urgent
* #urgent ^designation[0].language = #de-DE
* #urgent ^designation[0].use = $designation-usage|4.2.0#display
* #urgent ^designation[0].value = "Dringend"

* #asap
* #asap ^designation[0].language = #de-DE
* #asap ^designation[0].use = $designation-usage|4.2.0#display
* #asap ^designation[0].value = "Sehr dringend"

* #stat
* #stat ^designation[0].language = #de-DE
* #stat ^designation[0].use = $designation-usage|4.2.0#display
* #stat ^designation[0].value = "Notfall"
