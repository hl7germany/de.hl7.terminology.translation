# Abgleich der de-DE-Übersetzungen mit `FHIR CodeSystem Übersetzungen.csv`

Stand: 06.10.2026 · geprüfter FSH-Stand: nach PR #1 und PR #2

Die Datei `FHIR CodeSystem Übersetzungen - FHIR CodeSystem Übersetzungen.csv` enthält deutsche Übersetzungen für
25 CodeSystems. Ihre Spalten sind *Name*, *Codesystem URL*, *Code*, *Display*, *vorläufige Übersetzung*,
*Änderungsvorschlag MIO* und *Begründung*. Verglichen wurde die Spalte *vorläufige Übersetzung* mit der deutschen
Bezeichnung (`^designation.value`) in den CodeSystem-Supplements unter `input/fsh/`.

In den Tabellen heißt die Spalte *vorläufige Übersetzung* der CSV **abgestimmt MIO**. Zur Einordnung steht in der
Spalte **abgestimmt AT** die mit HL7 Austria abgestimmte Übersetzung aus `HL7 Übersetzungen.xlsx`, sofern es eine gibt.

## Ergebnis

6 der 25 CodeSystems aus der CSV haben ein Supplement in diesem Paket: condition-clinical, device-nametype, diagnostic-report-status, referencerange-meaning, request-priority, v3-ObservationInterpretation.

| Ergebnis | Codes |
|---|---:|
| gleich | 55 |
| nur Schreibweise verschieden (Groß-/Kleinschreibung, Leerzeichen) | 3 |
| inhaltlich abweichend | 25 |
| nur in der CSV | 1 |
| nur im FSH | 14 |

Bei 20 der 25 inhaltlichen Abweichungen entspricht das FSH *abgestimmt AT*, und *abgestimmt MIO* weicht davon ab.
Für die übrigen 5 gibt es keine Übersetzung *abgestimmt AT*.

## 1. Inhaltlich abweichende Übersetzungen

### 1a. FSH entspricht abgestimmt AT (20 Codes)

| CodeSystem | Code | FSH = abgestimmt AT | abgestimmt MIO | Anmerkung in der CSV | Fundstelle |
|---|---|---|---|---|---|
| condition-clinical | `relapse` | Rezidiv / Rückfall | Rezidiv |  | [CodeSystem-condition-clinical-de-de.fsh:44](../input/fsh/CodeSystem-condition-clinical-de-de.fsh#L44), CSV Zeile 34 |
| diagnostic-report-status | `final` | Final | Endgültig | Begründung: „Im klinischen Alltag ist "endgültig" gebräuchliche das Pendent zu "vorläufig", um den Status von Arztbriefen und Befunden zu beschreiben.“ | [CodeSystem-diagnostic-report-status-de-de.fsh:49](../input/fsh/CodeSystem-diagnostic-report-status-de-de.fsh#L49), CSV Zeile 52 |
| referencerange-meaning | `normal` | Normalbereich | Referenzbereich |  | [CodeSystem-referencerange-meaning-de-de.fsh:39](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L39), CSV Zeile 128 |
| referencerange-meaning | `therapeutic` | Therapeutischer Zielwert | Therapeutisch gewünschtes Level |  | [CodeSystem-referencerange-meaning-de-de.fsh:54](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L54), CSV Zeile 131 |
| referencerange-meaning | `pre` | Prätherapeutischer Zielwert | Prätherapeutisch gewünschtes Level |  | [CodeSystem-referencerange-meaning-de-de.fsh:59](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L59), CSV Zeile 132 |
| referencerange-meaning | `post` | Posttherapeutischer Zielwert | Posttherapeutisch gewünschtes Level |  | [CodeSystem-referencerange-meaning-de-de.fsh:64](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L64), CSV Zeile 133 |
| referencerange-meaning | `luteal` | Gelbkörperphase | Gelkörperphase |  | [CodeSystem-referencerange-meaning-de-de.fsh:89](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L89), CSV Zeile 138 |
| request-priority | `asap` | Sehr dringend | Baldmöglichst |  | [CodeSystem-request-priority-de-de.fsh:44](../input/fsh/CodeSystem-request-priority-de-de.fsh#L44), CSV Zeile 159 |
| request-priority | `stat` | Notfall | Sofort |  | [CodeSystem-request-priority-de-de.fsh:49](../input/fsh/CodeSystem-request-priority-de-de.fsh#L49), CSV Zeile 160 |
| v3-ObservationInterpretation | `CAR` | Träger | Anlageträger |  | [CodeSystem-observation-interpretation-de-de.fsh:65](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L65), CSV Zeile 169 |
| v3-ObservationInterpretation | `<` | Messbereich unterschritten | Unterhalb der analytischen Grenze |  | [CodeSystem-observation-interpretation-de-de.fsh:34](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L34), CSV Zeile 176 |
| v3-ObservationInterpretation | `>` | Messbereich überschritten | Oberhalb der analytischen Grenze |  | [CodeSystem-observation-interpretation-de-de.fsh:39](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L39), CSV Zeile 177 |
| v3-ObservationInterpretation | `A` | Auffällig | Abnorm |  | [CodeSystem-observation-interpretation-de-de.fsh:44](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L44), CSV Zeile 180 |
| v3-ObservationInterpretation | `AA` | Kritisch auffällig | Kritisch abnorm |  | [CodeSystem-observation-interpretation-de-de.fsh:49](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L49), CSV Zeile 181 |
| v3-ObservationInterpretation | `N` | Normal (nicht numerisch) | Normal |  | [CodeSystem-observation-interpretation-de-de.fsh:187](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L187), CSV Zeile 188 |
| v3-ObservationInterpretation | `NCL` | Kein CLSI definierter Grenzwert | Kein CLSI definierter Schwellenwert für Empfindlichkeit verfügbar |  | [CodeSystem-observation-interpretation-de-de.fsh:182](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L182), CSV Zeile 191 |
| v3-ObservationInterpretation | `EX` | Außerhalb des Schwellenwerts | Interpretation außerhalb des Grenzwertes |  | [CodeSystem-observation-interpretation-de-de.fsh:91](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L91), CSV Zeile 198 |
| v3-ObservationInterpretation | `HX` | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Grenzwertes |  | [CodeSystem-observation-interpretation-de-de.fsh:129](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L129), CSV Zeile 199 |
| v3-ObservationInterpretation | `LX` | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Grenzwertes |  | [CodeSystem-observation-interpretation-de-de.fsh:171](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L171), CSV Zeile 200 |
| v3-ObservationInterpretation | `E` | Uneindeutig | Mehrdeutig |  | [CodeSystem-observation-interpretation-de-de.fsh:86](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L86), CSV Zeile 203 |

### 1b. Keine Übersetzung abgestimmt AT (5 Codes)

| CodeSystem | Code | FSH | abgestimmt MIO | Anmerkung in der CSV | Fundstelle |
|---|---|---|---|---|---|
| device-nametype | `user-friendly-name` | Benutzerfreundlicher Name | Gebräuchlicher Name |  | [CodeSystem-device-nametype-de-de.fsh:39](../input/fsh/CodeSystem-device-nametype-de-de.fsh#L39), CSV Zeile 47 |
| device-nametype | `patient-reported-name` | PatientInberichteter Name | Von Patient:in angegebener Name | Änderungsvorschlag MIO: „Von Patient/Patientin angegebener Name (AT)“ Begründung: „Gechlechterneurtral, "patientenberichtet" kein gebräuchlicher Begriff“ | [CodeSystem-device-nametype-de-de.fsh:44](../input/fsh/CodeSystem-device-nametype-de-de.fsh#L44), CSV Zeile 48 |
| referencerange-meaning | `type` | Generell | Typ |  | [CodeSystem-referencerange-meaning-de-de.fsh:34](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L34), CSV Zeile 127 |
| referencerange-meaning | `endocrine` | Endokrinologisch adaptiert | Endokrin |  | [CodeSystem-referencerange-meaning-de-de.fsh:69](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L69), CSV Zeile 134 |
| v3-ObservationInterpretation | `_ObservationInterpretationSusceptibility` | Interpretation der antimikrobiellen Resistenztestung | Interperation der antimikrobiellen Empfindlichkeit |  | [CodeSystem-observation-interpretation-de-de.fsh:326](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L326), CSV Zeile 189 |

Zu diesen Codes enthält [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) Vorschläge zur Abstimmung.

## 2. Nur Schreibweise verschieden (3 Codes)

| CodeSystem | Code | FSH | abgestimmt MIO | abgestimmt AT | Fundstelle |
|---|---|---|---|---|---|
| condition-clinical | `resolved` | Nicht mehr vorhanden | Nicht mehr Vorhanden | Nicht mehr vorhanden | [CodeSystem-condition-clinical-de-de.fsh:59](../input/fsh/CodeSystem-condition-clinical-de-de.fsh#L59), CSV Zeile 37 |
| v3-ObservationInterpretation | `HH` | Kritisch hoch | Kritisch Hoch | Kritisch hoch | [CodeSystem-observation-interpretation-de-de.fsh:113](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L113), CSV Zeile 182 |
| v3-ObservationInterpretation | `SDD` | Dosis- / Konzentrationsabhängige Empfindlichkeit | Dosis-/Konzentrationsabhängige Empfindlichkeit | Dosis- / Konzentrationsabhängige Empfindlichkeit | [CodeSystem-observation-interpretation-de-de.fsh:259](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L259), CSV Zeile 196 |

## 3. Codes nur in der CSV (1)

| CodeSystem | Code | abgestimmt MIO | Hinweis | Fundstelle |
|---|---|---|---|---|
| device-nametype | `registered-name` | Eingetragener Name | Den Code gibt es erst in R5 (device-nametype 5.0.0). Das Supplement ergänzt die R4-Version 4.0.1, dort fehlt er. | CSV Zeile 46 |

## 4. Codes nur im FSH (14)

- **device-nametype:** `udi-label-name`, `manufacturer-name`, `model-name`, `other`. Diese Codes gibt es nur in R4 (4.0.1). Die CSV folgt bei device-nametype der R5-Version mit den Codes `registered-name`, `user-friendly-name` und `patient-reported-name`.
- **v3-ObservationInterpretation:** `AC`, `Carrier`, `H>`, `HM`, `L<`, `MS`, `OBX`, `QCF`, `TOX`, `VS`. Alle in THO als deprecated markiert. Die CSV enthält keine veralteten Codes.

## 5. Anmerkungen in der CSV zu übereinstimmenden Codes (5)

Bei diesen Codes stimmen FSH und CSV überein. Die CSV enthält aber eine Begründung oder einen Änderungswunsch.

| CodeSystem | Code | Übersetzung | Begründung in der CSV | Fundstelle |
|---|---|---|---|---|
| condition-clinical | `recurrence` | Wiederholtes Auftreten | Hier würden wir uns eine klarere Abgrenzung der Übersetzungen von "relapse" und "recurrence" wünschen; "Rezidiv" und "Wiederauftreten" haben im klinischen Alltag eine sehr ähnliche Bedeutung. Der Beschreibung der Codes von HL7 mein "relapse" eher das wiederholte, ggf. mehrfache Auftreten eines in sich abgeschlossene Episode (z.B. wiederkehrende Harnwegsinfektionen, jedoch unterschiedliche Episoden mit unterschiedlichen auslösenden Keimen), während "relapse" das (ggf. auch nur einmalige) wieder aufflammen derselben Erkrankung (z.B. Rezidiv einer bereits zuvor bekannten Krebserkrankung) widerspiegelt. "Rezidiv" würde daher am besten zu"relapse" passen (im Vergleich zur Beschreibung bei HL7 und wie eine solche Situation im klinischen Alltag bezeichnet werden würde); für "recurrence" würden wie einen Fomrulierung wie "Wiederholtes Auftreten" bevorzugen. | [CodeSystem-condition-clinical-de-de.fsh:39](../input/fsh/CodeSystem-condition-clinical-de-de.fsh#L39), CSV Zeile 33 |
| diagnostic-report-status | `partial` | Unvollständig | ein Wort, keine Verneinung vorangestellt | [CodeSystem-diagnostic-report-status-de-de.fsh:39](../input/fsh/CodeSystem-diagnostic-report-status-de-de.fsh#L39), CSV Zeile 50 |
| diagnostic-report-status | `appended` | Ergänzt | Nach der HL7-Definition des englischen Codes, wäre "ergänzt" aus unserer Sicht etwas passender und gebräuchlicher im Kontext von Befunden. | [CodeSystem-diagnostic-report-status-de-de.fsh:64](../input/fsh/CodeSystem-diagnostic-report-status-de-de.fsh#L64), CSV Zeile 55 |
| referencerange-meaning | `follicular` | Follikelphase | Analog zu Gelbköper"phase", gebräuchlicherer Begriff im medizinischen Kontext | [CodeSystem-referencerange-meaning-de-de.fsh:79](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh#L79), CSV Zeile 136 |
| v3-ObservationInterpretation | `_ObservationInterpretationChange` | Änderungsverlauf | Einheitliche Formulierung (also "Interpretation der XY" analog zu Zeile 166), klingt in den meisten Fällen (also die anderen Codes mit "Interpretation" wie Zeiele 173, 177 usw.) etwas verständlicher | [CodeSystem-observation-interpretation-de-de.fsh:311](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L311), CSV Zeile 170 |

## 6. Eigenheiten der CSV

- Die Codes `<` und `>` von v3-ObservationInterpretation stehen als `kleinerals` und `größerals` in der CSV (Zeilen 176
  und 177). Die englischen Displays „Off scale low“ und „Off scale high“ bestätigen die Zuordnung.
- `unknown` ist bei condition-clinical (Zeile 38) und AdministrativeGender (Zeile 5) als `unkown` geschrieben.
- device-nametype folgt der R5-Version, nicht R4 (siehe Abschnitte 3 und 4). Die CSV nennt dabei die Core-URL
  `http://hl7.org/fhir/device-nametype`. Unter dieser URL gibt es die R5-Codes nur in der R5-Version 5.0.0. THO enthält sie seit
  `hl7.terminology.r4#7.2.0` unter der eigenen URL `http://terminology.hl7.org/CodeSystem/device-nametype` (Version 1.0.0).
  Für R4 gilt weiter die Core-Fassung 4.0.1, siehe [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 6.
- Tippfehler in Übersetzungen: „Gelkörperphase“ (`luteal`), „Interperation“ (`_ObservationInterpretationSusceptibility`).

## Vergleichsregeln

- Zuordnung über die Spalte *Codesystem URL* zur URL in `^supplements`. *Name* und *Codesystem URL* stehen in der CSV
  nur in der ersten Zeile eines CodeSystems und gelten für die folgenden Zeilen.
- Verglichen wurde wörtlich nach Entfernen von Leerzeichen am Anfang und Ende. „Nur Schreibweise“ heißt: gleich, wenn
  Groß- und Kleinschreibung und Leerzeichen ignoriert werden.
- Die abgestimmte Übersetzung aus dem XLSX ist wie in [abgleich-abgestimmt-at.md](abgleich-abgestimmt-at.md)
  über die Code-System-OID zugeordnet.
- Nicht verglichen wurden die 19 CodeSystems der CSV ohne Supplement in diesem Paket: AdministrativeGender, AllergyIntoleranceCategory, AllergyIntoleranceClinicalStatusCodes, AllergyIntoleranceCriticality, AllergyIntoleranceType, AllergyIntoleranceVerificationStatusCodes, CarePlanIntent, ContactPointSystem, EventStatus, EventTiming, FHIRDeviceStatusReason, GoalAchievementStatus, GoalLifecycleStatus, GoalPriority, Medication Status Codes, AbsentAndUnknownDataUvIps, QuestionnaireItemType, RequestStatus, Hl7VSContactRole2.
