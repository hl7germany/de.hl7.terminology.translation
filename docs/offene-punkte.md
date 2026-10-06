# Offene Punkte vor dem Release

Stand: 06.10.2026 · geprüfter FSH-Stand: nach PR #1 bis PR #3

Sammlung der offenen Befunde aus den Prüfungen in diesem Ordner. Die Details stehen in den verlinkten Dokumenten.

## Zeitplan

- Bis Mittwoch, 07.10.2026: letzte Änderungen für das erste Package per Pull Request auf GitHub. GitHub ist die Source of
  Truth.
- Danach: Veröffentlichung des Package für das Ballot.
- Q1 2027: Ballot des Translation Package.

## Im TC Terminologie abgestimmte Regeln für Supplements

| Regel | Stand |
|---|---|
| URL beginnt mit `http://terminology.hl7.org/`: auf die THO-Version zeigen, nie auf die Core-Kopie 4.0.1 | erfüllt, alle 10 THO-Supplements zeigen auf die Version aus `hl7.terminology.r4#7.4.0` |
| URL beginnt mit `http://hl7.org/fhir/`: auf die Core-Version zeigen, in R4 also 4.0.1 | erfüllt, alle 8 Core-Supplements |
| Als Language Pack markieren (Extension `codesystem-supplement-type` mit `lang-pack`) | erfüllt mit PR #1, alle 18 |
| Versionen nachziehen: bei jedem THO-Release prüfen, ob sich die Version eines Ziel-CodeSystems geändert hat | derzeit stimmig mit THO 7.4.0. Daueraufgabe, siehe [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 2 |

## Festlegungen

- Widersprechen sich die Fassungen *abgestimmt AT* und *abgestimmt MIO*, gilt *abgestimmt AT*. Für Codes, die nur eine
  Fassung *abgestimmt MIO* haben, bleibt das FSH vorerst unverändert. Siehe [abgleich-abgestimmt-mio.md](abgleich-abgestimmt-mio.md).
- `lastReviewDate` wird für die Änderungen aus PR #1 bis PR #3 nicht angepasst.

## Offen im FSH

| Nr. | Punkt | Details |
|---|---|---|
| 1 | `OBX` in v3-ObservationInterpretation: „Dolmetscherkennzeichen in separaten OBX Segmenten“ ist falsch, „interpretation qualifiers“ sind keine Dolmetscher. Die neue Formulierung muss diskutiert werden. Der Code ist deprecated. | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) |
| 2 | Die Extension `codesystem-supplement-type` ist in keinem veröffentlichten Extensions-Paket definiert. Die Validierung der Supplements selbst meldet sie deshalb als unbekannt. Klärung bei HL7 International (Zulip oder Jira). | [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 3 |

Die FSH-Dateien widersprechen sonst weder einander noch den mit HL7 Austria abgestimmten Übersetzungen. Gleiche englische
Begriffe sind in allen 18 Supplements gleich übersetzt.

## Für die Abstimmung mit HL7 Austria

| Punkt | Umfang | Details |
|---|---|---|
| FSH-Übersetzungen ohne Fassung *abgestimmt AT*, darunter alle Codes von 9 Supplements | 91 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) |
| Änderungsvorschläge zu FSH-Übersetzungen | 11 Codes | ebenda, Spalte *Hinweis* |
| Keine Übersetzung für `personal`, `professional` und `official` in composition-attestation-mode; Vorschläge liegen vor | 3 Codes | ebenda |
| Codes mit Fassung *abgestimmt MIO*, aber ohne Fassung *abgestimmt AT*, bei denen das FSH von MIO abweicht | 5 Codes | [abgleich-abgestimmt-mio.md](abgleich-abgestimmt-mio.md), Abschnitt 1b |

## Für die Release Notes

- Die 10 THO-Supplements sind an eine bestimmte CodeSystem-Version gebunden. Alle 10 greifen nur mit
  `hl7.terminology.r4` 7.3.0 oder 7.4.0, siehe [technische-pruefung-supplements.md](technische-pruefung-supplements.md),
  Abschnitt 2.
- `designation.use` ist `hl7TermMaintInfra#preferredForLanguage`. In R4 liegt der Code außerhalb des extensible
  gebundenen ValueSets `designation-use|4.0.1`, der Validator gibt dazu je Designation eine Warnung aus. Siehe
  [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 4.
- device-nametype: Das Supplement ist für R4 korrekt. Ab R6 bindet `Device.name.type` an die THO-Fassung unter eigener
  URL, siehe [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 6.

## Erledigt

| Punkt | Umgesetzt mit |
|---|---|
| quantity-comparator zeigt auf `\|4.0.1`, der R5-Code `ad` ist entfernt | Commit `05df569` |
| `<` „Kleiner als“, `>` „Größer als“ (quantity-comparator), `entered-in-error` „Fehleingabe“ (specimen-status) | Commit `05df569` |
| `fsh-generated` passt wieder zu `input/fsh` | Commit `00b0a53`, danach in PR #1 bis PR #3 neu erzeugt |
| Alle 18 Supplements als Language Pack markiert | PR #1 |
| `designation.use` von `designation-usage\|4.2.0#display` auf `hl7TermMaintInfra#preferredForLanguage` umgestellt | PR #2 |
| `unknown` in condition-clinical und observation-status als „Unbekannt“ übersetzt | PR #2 |
| `N` in v3-ObservationInterpretation an abgestimmt AT angeglichen: „Normal (nicht numerisch)“ | PR #2 |
| Name und Titel des Supplements für sex-parameter-for-clinical-use: `SexParameterForClinicalUsedeDE`, „Geschlechtsparameter für die klinische Verwendung“ (vorher „Kollektivbezug der Richtgrenze“) | PR #2 |
| observation-status einheitlich mit diagnostic-report-status und abgestimmt AT: `final` „Final“, `amended` „Überarbeitet“, `cancelled` „Abgebrochen“, `entered-in-error` „Fehleingabe“ | PR #3 |
| device-nametype: `other` „Andere“, `patient-reported-name` „Patientenberichteter Name“ | PR #3 |
| v2-0203 `RI` „Ressourcen-Identifikator“, v2-0373 `ACID` „Ansäuerung“, `RECA` „Rekalzifizierung“ | PR #3 |
| Kopfdaten: Title v2-0203 „Typ des Identifiers“; Descriptions von data-absent-reason (Bedeutung und „Kodesystem“), quantity-comparator, request-priority, referencerange-meaning und device-nametype | PR #3 |
