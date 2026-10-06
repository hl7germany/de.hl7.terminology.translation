# Offene Punkte vor dem Release

Stand: 06.10.2026 · geprüfter FSH-Stand: Commit `05df569`

Sammlung der offenen Befunde aus den Prüfungen in diesem Ordner. Die Details stehen in den verlinkten Dokumenten.

## Übersetzungen

| Nr. | Punkt | Umfang | Details |
|---|---|---|---|
| 1 | `N` in v3-ObservationInterpretation weicht von der Fassung abgestimmt AT ab: im FSH „Normal“, abgestimmt AT „Normal (nicht numerisch)“. | 1 Code | [abgleich-abgestimmt-at.md](abgleich-abgestimmt-at.md) |
| 2 | FSH-Übersetzungen ohne Abstimmung mit HL7 Austria, darunter alle Codes von 9 Supplements. | 89 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) |
| 3 | Änderungsvorschläge zu FSH-Übersetzungen aus der Prüfung der nicht abgestimmten Codes. | 21 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md), Spalte *Hinweis* |
| 4 | Keine Übersetzung für `personal`, `professional` und `official` in composition-attestation-mode. Vorschläge liegen vor. | 3 Codes | [uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md) |
| 5 | `unknown` ist nicht übersetzt, in condition-clinical (nur in THO, Zielversion 3.0.0) und in observation-status (R4 4.0.1). In R4-Instanzen ist der Code jeweils gültig, beide Elemente sind *required* gebunden. Eine Übersetzung ist nicht vorgeschrieben, ohne sie erscheint aber das englische Display. Naheliegend ist „Unbekannt“, wie bei `unknown` in anderen Status-CodeSystems abgestimmt AT. | 2 Codes | [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 5 |
| 6 | Abweichungen zwischen abgestimmt MIO und dem FSH: Bei 19 Codes entspricht das FSH abgestimmt AT, bei 5 gibt es keine Fassung abgestimmt AT. | 24 Codes | [abgleich-abgestimmt-mio.md](abgleich-abgestimmt-mio.md) |

## Technik

| Nr. | Punkt | Umfang | Details |
|---|---|---|---|
| 7 | Kein Supplement ist als Language Pack markiert (Extension `codesystem-supplement-type` mit `lang-pack`). | alle 18 | [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 3 |
| 8 | `designation.use` verweist auf `http://terminology.hl7.org/CodeSystem/designation-usage`, das es nur in THO 1.0.0 gab. Zu entscheiden ist, ob `use` entfällt oder `hl7TermMaintInfra#preferredForLanguage` gesetzt wird. | alle 18 | [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 4 |
| 9 | v2-0203 hat `Title: "IdentifierTypedeDE"`. Die übrigen 17 Supplements haben einen deutschen Titel. | 1 Datei | [CodeSystem-v2-0203-de-de.fsh:5](../input/fsh/CodeSystem-v2-0203-de-de.fsh#L5) |
| 10 | Der Name `ReferenceRangeAppliesTodeDE` passt nicht zum CodeSystem sex-parameter-for-clinical-use. | 1 Datei | [CodeSystem-sex-parameter-for-clinical-use-de-de.fsh:3](../input/fsh/CodeSystem-sex-parameter-for-clinical-use-de-de.fsh#L3) |

## Für die Release Notes

- Die 10 THO-Supplements sind an eine bestimmte CodeSystem-Version gebunden. Alle 10 greifen nur mit
  `hl7.terminology.r4` 7.3.0 oder 7.4.0, siehe [technische-pruefung-supplements.md](technische-pruefung-supplements.md),
  Abschnitt 2.
- device-nametype: Das Supplement ist für R4 korrekt. Ab R6 bindet `Device.name.type` an die THO-Fassung unter eigener
  URL, siehe [technische-pruefung-supplements.md](technische-pruefung-supplements.md), Abschnitt 6.

## Erledigt

- quantity-comparator zeigt seit `05df569` auf `|4.0.1`, der R5-Code `ad` ist entfernt.
- Mit `05df569` übernommen: `<` „Kleiner als“, `>` „Größer als“ (quantity-comparator) und `entered-in-error`
  „Fehleingabe“ (specimen-status).
- `fsh-generated` ist neu erzeugt und passt zum FSH-Stand `05df569`.
