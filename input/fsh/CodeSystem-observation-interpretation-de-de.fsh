Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

CodeSystem: ObservationInterpretationdeDE
Id: observation-interpretation-de-de
Title: "Interpretation der Beobachtung"
Description: "Das Kodesystem Interpretation der Beobachtung (ObservationInterpretation) beschreibt die fachliche Bewertung eines Beobachtungs- oder Untersuchungsergebnisses."
* ^url = "http://fhir.de/CodeSystem/observation-interpretation-de-de"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-12"
* ^publisher = "HL7 Deutschland e.V."
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation|4.0.0"
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

* #"<"
* #"<" ^designation[0].language = #de-DE
* #"<" ^designation[0].use = $designation-usage|4.2.0#display
* #"<" ^designation[0].value = "Messbereich unterschritten"

* #">"
* #">" ^designation[0].language = #de-DE
* #">" ^designation[0].use = $designation-usage|4.2.0#display
* #">" ^designation[0].value = "Messbereich überschritten"

* #A
* #A ^designation[0].language = #de-DE
* #A ^designation[0].use = $designation-usage|4.2.0#display
* #A ^designation[0].value = "Auffällig"

* #AA
* #AA ^designation[0].language = #de-DE
* #AA ^designation[0].use = $designation-usage|4.2.0#display
* #AA ^designation[0].value = "Kritisch auffällig"

// AC: deprecated
* #AC
* #AC ^designation[0].language = #de-DE
* #AC ^designation[0].use = $designation-usage|4.2.0#display
* #AC ^designation[0].value = "Vorhandene antikomplementäre Substanzen"

* #B
* #B ^designation[0].language = #de-DE
* #B ^designation[0].use = $designation-usage|4.2.0#display
* #B ^designation[0].value = "Besser"

* #CAR
* #CAR ^designation[0].language = #de-DE
* #CAR ^designation[0].use = $designation-usage|4.2.0#display
* #CAR ^designation[0].value = "Träger"

// Carrier: deprecated
* #Carrier
* #Carrier ^designation[0].language = #de-DE
* #Carrier ^designation[0].use = $designation-usage|4.2.0#display
* #Carrier ^designation[0].value = "Träger"

* #D
* #D ^designation[0].language = #de-DE
* #D ^designation[0].use = $designation-usage|4.2.0#display
* #D ^designation[0].value = "Signifikanter Rückgang"

* #DET
* #DET ^designation[0].language = #de-DE
* #DET ^designation[0].use = $designation-usage|4.2.0#display
* #DET ^designation[0].value = "Nachgewiesen"

* #E
* #E ^designation[0].language = #de-DE
* #E ^designation[0].use = $designation-usage|4.2.0#display
* #E ^designation[0].value = "Uneindeutig"

* #EX
* #EX ^designation[0].language = #de-DE
* #EX ^designation[0].use = $designation-usage|4.2.0#display
* #EX ^designation[0].value = "Außerhalb des Schwellenwerts"

* #EXP
* #EXP ^designation[0].language = #de-DE
* #EXP ^designation[0].use = $designation-usage|4.2.0#display
* #EXP ^designation[0].value = "Erwartet"

* #H
* #H ^designation[0].language = #de-DE
* #H ^designation[0].use = $designation-usage|4.2.0#display
* #H ^designation[0].value = "Hoch"

// H>: deprecated
* #"H>"
* #"H>" ^designation[0].language = #de-DE
* #"H>" ^designation[0].use = $designation-usage|4.2.0#display
* #"H>" ^designation[0].value = "Signifikant hoch"

// HH: ist in der Hierarchie mehrfach zugeordnet
* #HH
* #HH ^designation[0].language = #de-DE
* #HH ^designation[0].use = $designation-usage|4.2.0#display
* #HH ^designation[0].value = "Kritisch hoch"

// HM: deprecated
* #HM
* #HM ^designation[0].language = #de-DE
* #HM ^designation[0].use = $designation-usage|4.2.0#display
* #HM ^designation[0].value = "Zur medizinischen Überprüfung zurückhalten"

* #HU
* #HU ^designation[0].language = #de-DE
* #HU ^designation[0].use = $designation-usage|4.2.0#display
* #HU ^designation[0].value = "Signifikant hoch"

* #HX
* #HX ^designation[0].language = #de-DE
* #HX ^designation[0].use = $designation-usage|4.2.0#display
* #HX ^designation[0].value = "Oberhalb des oberen Schwellenwerts"

* #I
* #I ^designation[0].language = #de-DE
* #I ^designation[0].use = $designation-usage|4.2.0#display
* #I ^designation[0].value = "Intermediär"

* #IE
* #IE ^designation[0].language = #de-DE
* #IE ^designation[0].use = $designation-usage|4.2.0#display
* #IE ^designation[0].value = "Evidenz unzureichend"

* #IND
* #IND ^designation[0].language = #de-DE
* #IND ^designation[0].use = $designation-usage|4.2.0#display
* #IND ^designation[0].value = "Unbestimmbar"

* #L
* #L ^designation[0].language = #de-DE
* #L ^designation[0].use = $designation-usage|4.2.0#display
* #L ^designation[0].value = "Niedrig"

// L<: deprecated
* #"L<"
* #"L<" ^designation[0].language = #de-DE
* #"L<" ^designation[0].use = $designation-usage|4.2.0#display
* #"L<" ^designation[0].value = "Signifikant niedrig"

// LL: ist in der Hierarchie mehrfach zugeordnet
* #LL
* #LL ^designation[0].language = #de-DE
* #LL ^designation[0].use = $designation-usage|4.2.0#display
* #LL ^designation[0].value = "Kritisch niedrig"

* #LU
* #LU ^designation[0].language = #de-DE
* #LU ^designation[0].use = $designation-usage|4.2.0#display
* #LU ^designation[0].value = "Signifikant niedrig"

* #LX
* #LX ^designation[0].language = #de-DE
* #LX ^designation[0].use = $designation-usage|4.2.0#display
* #LX ^designation[0].value = "Unterhalb des unteren Schwellenwerts"

// MS: deprecated
* #MS
* #MS ^designation[0].language = #de-DE
* #MS ^designation[0].use = $designation-usage|4.2.0#display
* #MS ^designation[0].value = "Mittlere Empfindlichkeit"

* #NCL
* #NCL ^designation[0].language = #de-DE
* #NCL ^designation[0].use = $designation-usage|4.2.0#display
* #NCL ^designation[0].value = "Kein CLSI definierter Grenzwert"

* #N
* #N ^designation[0].language = #de-DE
* #N ^designation[0].use = $designation-usage|4.2.0#display
* #N ^designation[0].value = "Normal (nicht numerisch)"

* #ND
* #ND ^designation[0].language = #de-DE
* #ND ^designation[0].use = $designation-usage|4.2.0#display
* #ND ^designation[0].value = "Nicht nachgewiesen"

* #NEG
* #NEG ^designation[0].language = #de-DE
* #NEG ^designation[0].use = $designation-usage|4.2.0#display
* #NEG ^designation[0].value = "Negativ"

* #NR
* #NR ^designation[0].language = #de-DE
* #NR ^designation[0].use = $designation-usage|4.2.0#display
* #NR ^designation[0].value = "Nicht reaktiv"

* #NS
* #NS ^designation[0].language = #de-DE
* #NS ^designation[0].use = $designation-usage|4.2.0#display
* #NS ^designation[0].value = "Nicht empfindlich"

// OBX: deprecated
* #OBX
* #OBX ^designation[0].language = #de-DE
* #OBX ^designation[0].use = $designation-usage|4.2.0#display
* #OBX ^designation[0].value = "Dolmetscherkennzeichen in separaten OBX Segmenten"

* #ObservationInterpretationDetection
* #ObservationInterpretationDetection ^designation[0].language = #de-DE
* #ObservationInterpretationDetection ^designation[0].use = $designation-usage|4.2.0#display
* #ObservationInterpretationDetection ^designation[0].value = "Feststellungsinterpretation"

* #ObservationInterpretationExpectation
* #ObservationInterpretationExpectation ^designation[0].language = #de-DE
* #ObservationInterpretationExpectation ^designation[0].use = $designation-usage|4.2.0#display
* #ObservationInterpretationExpectation ^designation[0].value = "Erwartungsinterpretation"

* #POS
* #POS ^designation[0].language = #de-DE
* #POS ^designation[0].use = $designation-usage|4.2.0#display
* #POS ^designation[0].value = "Positiv"

// QCF: deprecated
* #QCF
* #QCF ^designation[0].language = #de-DE
* #QCF ^designation[0].use = $designation-usage|4.2.0#display
* #QCF ^designation[0].value = "Versagen der Qualitätskontrolle"

* #R
* #R ^designation[0].language = #de-DE
* #R ^designation[0].use = $designation-usage|4.2.0#display
* #R ^designation[0].value = "Resistent"

* #RR
* #RR ^designation[0].language = #de-DE
* #RR ^designation[0].use = $designation-usage|4.2.0#display
* #RR ^designation[0].value = "Reaktiv"

* #ReactivityObservationInterpretation
* #ReactivityObservationInterpretation ^designation[0].language = #de-DE
* #ReactivityObservationInterpretation ^designation[0].use = $designation-usage|4.2.0#display
* #ReactivityObservationInterpretation ^designation[0].value = "Reaktivitätsinterpretation"

* #S
* #S ^designation[0].language = #de-DE
* #S ^designation[0].use = $designation-usage|4.2.0#display
* #S ^designation[0].value = "Empfindlich"

* #SDD
* #SDD ^designation[0].language = #de-DE
* #SDD ^designation[0].use = $designation-usage|4.2.0#display
* #SDD ^designation[0].value = "Dosis- / Konzentrationsabhängige Empfindlichkeit"

* #SYN-R
* #SYN-R ^designation[0].language = #de-DE
* #SYN-R ^designation[0].use = $designation-usage|4.2.0#display
* #SYN-R ^designation[0].value = "Resistent gegenüber Substanzkombination"

* #SYN-S
* #SYN-S ^designation[0].language = #de-DE
* #SYN-S ^designation[0].use = $designation-usage|4.2.0#display
* #SYN-S ^designation[0].value = "Empfindlich gegenüber Substanzkombination"

// TOX: deprecated
* #TOX
* #TOX ^designation[0].language = #de-DE
* #TOX ^designation[0].use = $designation-usage|4.2.0#display
* #TOX ^designation[0].value = "Zytotoxische Substanz vorhanden"

* #U
* #U ^designation[0].language = #de-DE
* #U ^designation[0].use = $designation-usage|4.2.0#display
* #U ^designation[0].value = "Signifikanter Anstieg"

* #UNE
* #UNE ^designation[0].language = #de-DE
* #UNE ^designation[0].use = $designation-usage|4.2.0#display
* #UNE ^designation[0].value = "Unerwartet"

// VS: deprecated
* #VS
* #VS ^designation[0].language = #de-DE
* #VS ^designation[0].use = $designation-usage|4.2.0#display
* #VS ^designation[0].value = "Sehr empfindlich"

* #W
* #W ^designation[0].language = #de-DE
* #W ^designation[0].use = $designation-usage|4.2.0#display
* #W ^designation[0].value = "Schlechter"

* #WR
* #WR ^designation[0].language = #de-DE
* #WR ^designation[0].use = $designation-usage|4.2.0#display
* #WR ^designation[0].value = "Schwach reaktiv"

* #"_GeneticObservationInterpretation"
* #"_GeneticObservationInterpretation" ^designation[0].language = #de-DE
* #"_GeneticObservationInterpretation" ^designation[0].use = $designation-usage|4.2.0#display
* #"_GeneticObservationInterpretation" ^designation[0].value = "Interpretation der genetischen Analyse"

* #"_ObservationInterpretationChange"
* #"_ObservationInterpretationChange" ^designation[0].language = #de-DE
* #"_ObservationInterpretationChange" ^designation[0].use = $designation-usage|4.2.0#display
* #"_ObservationInterpretationChange" ^designation[0].value = "Änderungsverlauf"

* #"_ObservationInterpretationExceptions"
* #"_ObservationInterpretationExceptions" ^designation[0].language = #de-DE
* #"_ObservationInterpretationExceptions" ^designation[0].use = $designation-usage|4.2.0#display
* #"_ObservationInterpretationExceptions" ^designation[0].value = "Ausnahmewertinterpretation"

* #"_ObservationInterpretationNormality"
* #"_ObservationInterpretationNormality" ^designation[0].language = #de-DE
* #"_ObservationInterpretationNormality" ^designation[0].use = $designation-usage|4.2.0#display
* #"_ObservationInterpretationNormality" ^designation[0].value = "Normalitätsinterpretation"

* #"_ObservationInterpretationSusceptibility"
* #"_ObservationInterpretationSusceptibility" ^designation[0].language = #de-DE
* #"_ObservationInterpretationSusceptibility" ^designation[0].use = $designation-usage|4.2.0#display
* #"_ObservationInterpretationSusceptibility" ^designation[0].value = "Interpretation der antimikrobiellen Resistenztestung"
