# Offene Punkte vor dem Release

Stand: 06.10.2026 · geprüfter FSH-Stand: nach PR #1 und PR #2

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

## Offen

| Nr. | Punkt | Umfang | Details |
|---|---|---|---|
| 1 | FSH-Übersetzungen ohne Abstimmung mit HL7 Austria, darunter alle Codes von 9 Supplements und die mit PR #2 ergänzten `unknown`. | 91 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) |
| 2 | Änderungsvorschläge zu FSH-Übersetzungen aus der Prüfung der nicht abgestimmten Codes. | 21 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md), Spalte *Hinweis* |
| 3 | Keine Übersetzung für `personal`, `professional` und `official` in composition-attestation-mode. Vorschläge liegen vor. | 3 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) |
| 4 | Abweichungen zwischen abgestimmt MIO und dem FSH: Bei 20 Codes entspricht das FSH abgestimmt AT, bei 5 gibt es keine Fassung abgestimmt AT. | 25 Codes | [abgleich-abgestimmt-mio.md](abgleich-abgestimmt-mio.md) |
| 5 | v2-0203 hat `Title: "IdentifierTypedeDE"`, die übrigen 17 Supplements haben einen deutschen Titel. In PR #2 bewusst nicht geändert. | 1 Datei | [CodeSystem-v2-0203-de-de.fsh:5](../input/fsh/CodeSystem-v2-0203-de-de.fsh#L5) |
| 6 | Die Extension `codesystem-supplement-type` ist in keinem veröffentlichten Extensions-Paket definiert. Die Validierung der Supplements selbst meldet sie deshalb als unbekannt. Klärung bei HL7 International (Zulip oder Jira). | extern | [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 3 |

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
| `fsh-generated` passt wieder zu `input/fsh` | Commit `00b0a53`, danach in PR #1 und PR #2 neu erzeugt |
| Alle 18 Supplements als Language Pack markiert | PR #1 |
| `designation.use` von `designation-usage\|4.2.0#display` auf `hl7TermMaintInfra#preferredForLanguage` umgestellt | PR #2 |
| `unknown` in condition-clinical und observation-status als „Unbekannt“ übersetzt | PR #2 |
| `N` in v3-ObservationInterpretation an abgestimmt AT angeglichen: „Normal (nicht numerisch)“ | PR #2 |
| Name des Supplements für sex-parameter-for-clinical-use: `SexParameterForClinicalUsedeDE` | PR #2 |
