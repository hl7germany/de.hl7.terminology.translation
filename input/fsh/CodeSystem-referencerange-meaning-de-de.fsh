Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra

CodeSystem: ReferenceRangeMeaningdeDE
Id: referencerange-meaning-de-de
Title: "Richtgrenzen-Typ"
Description: "Das Kodesystem Richtgrenzen-Typ (ReferenceRangeMeaning) definiert Kodes zur Kennzeichnung des erwarteten Referenzbereichs oder Zielwerts für eine spezifische Zielpopulation."
* ^url = "http://fhir.de/CodeSystem/referencerange-meaning-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/referencerange-meaning|1.0.1"
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

* #type
* #type ^designation[0].language = #de-DE
* #type ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #type ^designation[0].value = "Generell"

* #normal
* #normal ^designation[0].language = #de-DE
* #normal ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #normal ^designation[0].value = "Normalbereich"

* #recommended
* #recommended ^designation[0].language = #de-DE
* #recommended ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #recommended ^designation[0].value = "Empfohlener Bereich"

* #treatment
* #treatment ^designation[0].language = #de-DE
* #treatment ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #treatment ^designation[0].value = "Behandlungsbereich"

* #therapeutic
* #therapeutic ^designation[0].language = #de-DE
* #therapeutic ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #therapeutic ^designation[0].value = "Therapeutischer Zielwert"

* #pre
* #pre ^designation[0].language = #de-DE
* #pre ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #pre ^designation[0].value = "Prätherapeutischer Zielwert"

* #post
* #post ^designation[0].language = #de-DE
* #post ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #post ^designation[0].value = "Posttherapeutischer Zielwert"

* #endocrine
* #endocrine ^designation[0].language = #de-DE
* #endocrine ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #endocrine ^designation[0].value = "Endokrinologisch adaptiert"

* #pre-puberty
* #pre-puberty ^designation[0].language = #de-DE
* #pre-puberty ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #pre-puberty ^designation[0].value = "Präpubertär"

* #follicular
* #follicular ^designation[0].language = #de-DE
* #follicular ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #follicular ^designation[0].value = "Follikelphase"

* #midcycle
* #midcycle ^designation[0].language = #de-DE
* #midcycle ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #midcycle ^designation[0].value = "Zyklusmitte"

* #luteal
* #luteal ^designation[0].language = #de-DE
* #luteal ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #luteal ^designation[0].value = "Gelbkörperphase"

* #postmenopausal
* #postmenopausal ^designation[0].language = #de-DE
* #postmenopausal ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #postmenopausal ^designation[0].value = "Postmenopausal"
