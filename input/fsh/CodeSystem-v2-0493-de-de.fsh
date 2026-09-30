Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: SpecimenConditiondeDE
Id: v2-0493-de-de
Title: "Probenzustand"
Description: "Das Kodesystem Probenzustand (SpecimenCondition) beschreibt den Zustand bzw. die Beschaffenheit eines Probenmaterials zum Zeitpunkt der Untersuchung oder Verarbeitung."
* ^url = "http://fhir.de/CodeSystem/v2-0493-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/v2-0493|3.0.0"
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

* #AUT
* #AUT ^designation[0].language = #de-DE
* #AUT ^designation[0].use = $designation-usage|4.2.0#display
* #AUT ^designation[0].value = "Autolysiert"

* #CFU
* #CFU ^designation[0].language = #de-DE
* #CFU ^designation[0].use = $designation-usage|4.2.0#display
* #CFU ^designation[0].value = "Zentrifugiert"

* #CLOT
* #CLOT ^designation[0].language = #de-DE
* #CLOT ^designation[0].use = $designation-usage|4.2.0#display
* #CLOT ^designation[0].value = "Verklumpt"

* #CON
* #CON ^designation[0].language = #de-DE
* #CON ^designation[0].use = $designation-usage|4.2.0#display
* #CON ^designation[0].value = "Kontaminiert"

* #COOL
* #COOL ^designation[0].language = #de-DE
* #COOL ^designation[0].use = $designation-usage|4.2.0#display
* #COOL ^designation[0].value = "Gekühlt"

* #FROZ
* #FROZ ^designation[0].language = #de-DE
* #FROZ ^designation[0].use = $designation-usage|4.2.0#display
* #FROZ ^designation[0].value = "Gefroren"

* #HEM
* #HEM ^designation[0].language = #de-DE
* #HEM ^designation[0].use = $designation-usage|4.2.0#display
* #HEM ^designation[0].value = "Hämolysiert"

* #LIVE
* #LIVE ^designation[0].language = #de-DE
* #LIVE ^designation[0].use = $designation-usage|4.2.0#display
* #LIVE ^designation[0].value = "Lebendig"

* #ROOM
* #ROOM ^designation[0].language = #de-DE
* #ROOM ^designation[0].use = $designation-usage|4.2.0#display
* #ROOM ^designation[0].value = "Raumtemperatur"

* #SNR
* #SNR ^designation[0].language = #de-DE
* #SNR ^designation[0].use = $designation-usage|4.2.0#display
* #SNR ^designation[0].value = "Probe nicht erhalten"
