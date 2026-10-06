Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: QuantityComparatordeDE
Id: quantity-comparator-de-de
Title: "Vergleichsoperator für Mengenangaben"
Description: "Das Kodesystem Vergleichsoperator für Mengenangaben (QuantityOperator) kennzeichnet Vergleichsoperatoren für quantitative Werte. Damit kann strukturiert beschrieben werden, wie eine Mengen- oder Messangabe im Verhältnis zu einem angegebenen Wert interpretiert werden soll."
* ^url = "http://fhir.de/CodeSystem/quantity-comparator-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/quantity-comparator|4.0.1"
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

* #"<"
* #"<" ^designation[0].language = #de-DE
* #"<" ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #"<" ^designation[0].value = "Kleiner als"

* #"<="
* #"<=" ^designation[0].language = #de-DE
* #"<=" ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #"<=" ^designation[0].value = "Kleiner oder gleich"

* #">="
* #">=" ^designation[0].language = #de-DE
* #">=" ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #">=" ^designation[0].value = "Größer oder gleich"

* #">"
* #">" ^designation[0].language = #de-DE
* #">" ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #">" ^designation[0].value = "Größer als"
