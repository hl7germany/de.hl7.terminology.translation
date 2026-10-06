# Technische Prüfung der Supplements

Stand: 06.10.2026 · geprüfter FSH-Stand: Commit `05df569`

Ein CodeSystem-Supplement gilt nur für das CodeSystem in genau der Version, die in `^supplements` steht.
Im R4-Kontext liegen viele CodeSystems doppelt vor: im Core (`hl7.fhir.r4.core#4.0.1`) mit Version 4.0.1 und in
HL7 Terminology (THO) mit eigener Versionierung. Geprüft wurde, ob die 18 Supplements unter `input/fsh/` auf die
richtige Version zeigen und ob sie die Voraussetzungen erfüllen, um angewendet zu werden.

Erwartete Zielversion:

- URL beginnt mit `http://terminology.hl7.org/`: die Version in `hl7.terminology.r4#7.4.0`, der THO-Abhängigkeit
  aus `sushi-config.yaml`. Die Core-Kopie mit 4.0.1 verwirft der FHIR Validator, sobald ein THO-Paket geladen ist.
- URL beginnt mit `http://hl7.org/fhir/`: die Core-Version 4.0.1. Von diesen CodeSystems gibt es keine THO-Kopie mit
  derselben URL. Für device-nametype gibt es in THO einen Nachfolger unter eigener URL, siehe Abschnitt 6.

## Zusammenfassung

| Befund | Betroffene Supplements |
|---|---|
| Zielversion falsch, Supplement greift in R4 nie | keins mehr. quantity-comparator ist seit `05df569` korrigiert, siehe Abschnitt 1 |
| Greift nur, wenn das verwendete THO-Release genau die Zielversion enthält | alle 10 THO-Supplements. Von den geprüften Releases enthalten nur `hl7.terminology.r4` 7.3.0 und 7.4.0 alle 10 Zielversionen |
| Nicht als Language Pack markiert | alle 18 |
| `designation.use` verweist auf ein CodeSystem, das es nur in THO 1.0.0 gab | alle 18 |

| Supplement | `^supplements` | Herkunft | Zielversion korrekt | Zielversion enthalten in `hl7.terminology.r4` | Language Pack |
|---|---|---|---|---|---|
| [composition-attestation-mode](../input/fsh/CodeSystem-composition-attestation-mode-de-de.fsh) | `http://hl7.org/fhir/composition-attestation-mode\|4.0.1` | Core | ja | – (Core) | nein |
| [condition-clinical](../input/fsh/CodeSystem-condition-clinical-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/condition-clinical\|3.0.0` | THO | ja | 6.2.0 bis 7.4.0 | nein |
| [condition-ver-status](../input/fsh/CodeSystem-condition-ver-status-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/condition-ver-status\|2.0.1` | THO | ja | 6.2.0 bis 7.4.0 | nein |
| [data-absent-reason](../input/fsh/CodeSystem-data-absent-reason-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/data-absent-reason\|2.0.0` | THO | ja | 7.3.0 bis 7.4.0 | nein |
| [device-nametype](../input/fsh/CodeSystem-device-nametype-de-de.fsh) | `http://hl7.org/fhir/device-nametype\|4.0.1` | Core | ja | – (Core) | nein |
| [diagnostic-report-status](../input/fsh/CodeSystem-diagnostic-report-status-de-de.fsh) | `http://hl7.org/fhir/diagnostic-report-status\|4.0.1` | Core | ja | – (Core) | nein |
| [v3-ObservationInterpretation](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\|4.0.0` | THO | ja | 7.1.0 bis 7.4.0 | nein |
| [observation-status](../input/fsh/CodeSystem-observation-status-de-de.fsh) | `http://hl7.org/fhir/observation-status\|4.0.1` | Core | ja | – (Core) | nein |
| [quantity-comparator](../input/fsh/CodeSystem-quantity-comparator-de-de.fsh) | `http://hl7.org/fhir/quantity-comparator\|4.0.1` | Core | ja | – (Core) | nein |
| [referencerange-meaning](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/referencerange-meaning\|1.0.1` | THO | ja | 6.2.0 bis 7.4.0 | nein |
| [request-priority](../input/fsh/CodeSystem-request-priority-de-de.fsh) | `http://hl7.org/fhir/request-priority\|4.0.1` | Core | ja | – (Core) | nein |
| [sex-parameter-for-clinical-use](../input/fsh/CodeSystem-sex-parameter-for-clinical-use-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use\|2.0.0` | THO | ja | 6.2.0 bis 7.4.0 | nein |
| [specimen-status](../input/fsh/CodeSystem-specimen-status-de-de.fsh) | `http://hl7.org/fhir/specimen-status\|4.0.1` | Core | ja | – (Core) | nein |
| [v2-0203](../input/fsh/CodeSystem-v2-0203-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/v2-0203\|5.0.0` | THO | ja | 6.5.0 bis 7.4.0 | nein |
| [v2-0373](../input/fsh/CodeSystem-v2-0373-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/v2-0373\|3.0.0` | THO | ja | 7.1.0 bis 7.4.0 | nein |
| [v2-0493](../input/fsh/CodeSystem-v2-0493-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/v2-0493\|3.0.0` | THO | ja | 7.1.0 bis 7.4.0 | nein |
| [v2-0916](../input/fsh/CodeSystem-v2-0916-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/v2-0916\|3.0.0` | THO | ja | 7.1.0 bis 7.4.0 | nein |
| [v3-ParticipationType](../input/fsh/CodeSystem-v3-participationtype-de-de.fsh) | `http://terminology.hl7.org/CodeSystem/v3-ParticipationType\|7.0.0` | THO | ja | 7.3.0 bis 7.4.0 | nein |

## 1. Zielversion quantity-comparator (behoben)

[CodeSystem-quantity-comparator-de-de.fsh](../input/fsh/CodeSystem-quantity-comparator-de-de.fsh) setzte bis Commit
`dab1ce0` `^supplements = "http://hl7.org/fhir/quantity-comparator|5.0.0"`. Version 5.0.0 ist R5. Im R4-Kontext gibt
es das CodeSystem nur in `hl7.fhir.r4.core#4.0.1`, eine THO-Kopie existiert nicht. Das Supplement griff in R4 deshalb
nie.

Seit Commit `05df569` zeigt es auf `|4.0.1`, und der erst in R5 hinzugekommene Code `ad` ist entfernt. Die
verbleibenden Codes `<`, `<=`, `>=` und `>` sind in 4.0.1 enthalten.

## 2. Bindung an das THO-Release

Die 10 THO-Supplements zeigen auf die Versionen aus `hl7.terminology.r4#7.4.0`. Das ist korrekt. Weil die Bindung
exakt ist, greift ein Supplement aber nur, wenn das nutzende IG, der Validator oder der Terminologieserver dieselbe
CodeSystem-Version verwendet. Welche das ist, hängt vom geladenen THO-Release ab.

Beispiel condition-clinical: Das Supplement zeigt auf `condition-clinical|3.0.0`. `hl7.terminology.r4#5.3.0` enthält
condition-clinical in Version 2.0.0. Ein IG mit dieser THO-Abhängigkeit prüft `Condition.clinicalStatus` gegen 2.0.0,
das Supplement passt nicht und die deutschen Displays werden nicht verwendet. Von 6.2.0 bis 7.4.0 enthält THO
Version 3.0.0, dort passt es.

Die Tabelle zeigt, in welchen Releases von `hl7.terminology.r4` die Zielversion enthalten ist. Nicht alle Releases
liegen im Cache (siehe Prüfumfang). Liegt zwischen dem vorherigen geprüften und dem ersten passenden Release eine
Lücke, kann die Zielversion schon in einem Release dazwischen enthalten sein.

| Supplement | Zielversion | Zielversion enthalten in `hl7.terminology.r4` | Version im vorherigen geprüften Release |
|---|---|---|---|
| [condition-clinical](../input/fsh/CodeSystem-condition-clinical-de-de.fsh) | 3.0.0 | 6.2.0 bis 7.4.0 | 2.0.0 (5.3.0) |
| [condition-ver-status](../input/fsh/CodeSystem-condition-ver-status-de-de.fsh) | 2.0.1 | 6.2.0 bis 7.4.0 | 1.0.0 (5.3.0) |
| [referencerange-meaning](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh) | 1.0.1 | 6.2.0 bis 7.4.0 | 0.1.0 (5.3.0) |
| [sex-parameter-for-clinical-use](../input/fsh/CodeSystem-sex-parameter-for-clinical-use-de-de.fsh) | 2.0.0 | 6.2.0 bis 7.4.0 | 1.1.0 (5.3.0) |
| [v2-0203](../input/fsh/CodeSystem-v2-0203-de-de.fsh) | 5.0.0 | 6.5.0 bis 7.4.0 | 4.0.0 (6.3.0) |
| [v2-0373](../input/fsh/CodeSystem-v2-0373-de-de.fsh) | 3.0.0 | 7.1.0 bis 7.4.0 | 2.0.0 (7.0.0) |
| [v2-0493](../input/fsh/CodeSystem-v2-0493-de-de.fsh) | 3.0.0 | 7.1.0 bis 7.4.0 | 2.0.0 (7.0.0) |
| [v2-0916](../input/fsh/CodeSystem-v2-0916-de-de.fsh) | 3.0.0 | 7.1.0 bis 7.4.0 | 2.0.0 (7.0.0) |
| [v3-ObservationInterpretation](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh) | 4.0.0 | 7.1.0 bis 7.4.0 | 3.0.0 (7.0.0) |
| [data-absent-reason](../input/fsh/CodeSystem-data-absent-reason-de-de.fsh) | 2.0.0 | 7.3.0 bis 7.4.0 | 1.0.0 (7.2.0) |
| [v3-ParticipationType](../input/fsh/CodeSystem-v3-participationtype-de-de.fsh) | 7.0.0 | 7.3.0 bis 7.4.0 | 6.0.0 (7.2.0) |

Daraus folgt:

- Ein Paket, das alle Supplements nutzen will, etwa dgLP, braucht ein THO-Release, das alle 10 Zielversionen enthält.
  Von den geprüften Releases sind das 7.3.0 und 7.4.0.
- Die Bereiche haben auch eine Obergrenze. Ändert ein künftiges THO-Release die Version eines Ziel-CodeSystems, greift
  das Supplement dort ohne Warnung nicht mehr.
  Das kann auch ohne inhaltliche Änderung passieren: data-absent-reason ging mit 7.3.0 von 1.0.0 auf 2.0.0, die
  15 Codes sind gleich geblieben. Die Zielversionen müssen deshalb bei jedem THO-Release geprüft werden.
- THO hat die aus R4 übernommenen CodeSystems mit niedrigeren Versionsnummern als 4.0.1 neu begonnen. Ein Vergleich
  nach Versionsnummer zwischen Core und THO führt deshalb zur alten R4-Kopie.

Nach Tests mit dem FHIR Validator 6.10.4 (nicht Teil dieser Prüfung) lädt der Validator für R4 von sich aus
`hl7.terminology.r4#6.2.0`, `hl7.terminology#7.4.0` und `hl7.terminology.r5#7.1.0` und verwendet bei Referenzen ohne
Version die höchste Version. Dann greifen alle 10. Bei Paketen mit eigener, älterer THO-Abhängigkeit gilt dagegen deren
Version.

## 3. Keine Markierung als Language Pack

Keines der 18 Supplements trägt die Extension `http://hl7.org/fhir/StructureDefinition/codesystem-supplement-type` mit
dem Wert `lang-pack`. Seit Februar 2026 wenden FHIR Validator, IG Publisher und tx.fhir.org ein Supplement nur noch an,
wenn ein ValueSet oder ein Operations-Parameter es referenziert oder wenn es als Language Pack markiert ist. Ohne
Markierung werden die Übersetzungen also nicht automatisch verwendet.

Hinweise zur Umsetzung:

- Der IG-Parameter `lang-pack = true` setzt die Extension nur beim Bau mit dem IG Publisher. Das Repository baut mit
  `FSHOnly: true`, die Extension muss deshalb direkt ins FSH.
- Die Supplements setzen ihre Extensions mit festem Index ab `^extension[0]`. Eine zusätzliche Regel, etwa über ein
  RuleSet mit `^extension[+]`, muss nach den vorhandenen Extension-Regeln stehen, sonst wird sie von `[0]` überschrieben.
- Die Extension ist in keinem Extensions-Paket im lokalen Cache definiert, auch nicht in
  `hl7.fhir.uv.extensions.r4#5.3.0`. Validator und tx.fhir.org werten sie aus, die Validierung des Supplements selbst
  meldet sie aber als unbekannt.

## 4. `designation.use` verweist auf ein CodeSystem, das es in THO nicht mehr gibt

Alle 18 Supplements setzen `^designation[0].use = $designation-usage|4.2.0#display` mit
`Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage`.

Dieses CodeSystem gab es nur in HL7 Terminology 1.0.0 (Mai 2020): Version 4.2.0, Status `draft`, ein einziger Code
`display`. Ab THO 2.0.0 ist es nicht mehr enthalten. Die Seiten für 2.0.0, 3.0.0 und 7.4.0 liefern 404, und in
`hl7.terminology.r4` 4.0.0 bis 7.4.0 fehlt es. Die Seite unter
<https://terminology.hl7.org/CodeSystem-designation-usage.html> ist ein Überbleibsel aus 1.0.0. Ihre Fußzeile lautet
„HL7 Terminology (v1.0.0: Release)“.

Im lokalen Cache ist das CodeSystem nur im Cross-Version-Paket `hl7.fhir.uv.xver-r5.r4#0.1.0` definiert. R4 Core
verwendet die URL in `designation.use` vieler v2-CodeSystems, definiert sie aber nicht. tx.fhir.org antwortet auf
`$validate-code` mit „A definition for CodeSystem 'http://terminology.hl7.org/CodeSystem/designation-usage' could not
be found, so the code cannot be validated“.

### Test mit dem FHIR Validator

FHIR Validator 6.10.4, `-version 4.0.1`, `hl7.terminology.r4#7.4.0`, offline. Validiert wurde das Supplement
condition-clinical-de-de in drei Varianten, die sich nur in `designation.use` unterscheiden. Gezählt sind nur die
Meldungen zu `designation.use`.

| `designation.use` | Meldungen je Designation |
|---|---|
| `designation-usage\|4.2.0#display` (heute) | 1 Fehler („No definition could be found for URL value …“), 2 Warnungen |
| `hl7TermMaintInfra#preferredForLanguage` | 1 Warnung: Code nicht im ValueSet `designation-use\|4.0.1` (Binding extensible) |
| ohne `use` | keine |

Laut Quellcode des Validators (`ValueSetValidator`) spielt `use` bei der Prüfung des Displays einer Instanz keine Rolle,
maßgeblich ist nur `designation.language`. Für das Display einer Sprache in Expansionen bevorzugt der
`ValueSetExpander` Designations mit `preferredForLanguage`, danach solche ohne `use`.

### Korrekte Befüllung in R4

`designation.use` ist 0..1 und in R4 extensible an das ValueSet `designation-use` gebunden. Es enthält nur
SNOMED CT 900000000000003001 (Fully specified name) und 900000000000013009 (Synonym). Extensible erlaubt andere Codes,
wenn keiner aus dem ValueSet passt.

Korrekt sind zwei Varianten:

- **Ohne `use`.** Die Definition von `designation.use` in R4 und R5 sagt: „If no use is provided, the designation can
  be assumed to be suitable for general display to a human user.“ Eine Designation mit `language = de-DE` ohne `use`
  ist damit ein deutsches Display.
- **`http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra#preferredForLanguage`.** THO definiert den Code als
  „Denotes a code designation which is preferred for the identified language among more than one for that language.
  Used in value set designation-use in FHIR.“ Er ist im ValueSet `designation-use` des aktuellen FHIR-Builds enthalten,
  und das Sprach-Supplement-Beispiel aus R5 (`example-supplement-2`) verwendet ihn. In allen geprüften THO-Releases
  von 4.0.0 bis 7.4.0 ist er vorhanden. In R4 steht er nicht im ValueSet, der Validator gibt deshalb eine Warnung aus.

| | ohne `use` | `preferredForLanguage` |
|---|---|---|
| Validierung in R4 | keine Meldung | Warnung (extensible Binding) |
| Bedeutung | implizit über die Definition von `designation.use` | ausdrücklich |
| mehrere Designations je Sprache | bevorzugte nicht erkennbar | bevorzugte gekennzeichnet |
| Expansion (Validator) | zweite Wahl für das Display | erste Wahl für das Display |

Weniger geeignet sind SNOMED CT 900000000000013009 (Synonym) und 900000000000003001 (Fully specified name). Synonym ist
der einzige Code im R4-ValueSet, der zu einer Übersetzung passt, sagt aber nicht, dass es das bevorzugte Display ist,
und setzt SNOMED CT im Kontext voraus. Ein Fully specified name ist keine Display-Bezeichnung.

FSH für die beiden Varianten:

```fsh
// ohne use: die Zeilen mit ^designation[0].use und den Alias $designation-usage entfernen
* #active ^designation[0].language = #de-DE
* #active ^designation[0].value = "Aktiv"

// mit preferredForLanguage
Alias: $hl7TermMaintInfra = http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra
* #active ^designation[0].language = #de-DE
* #active ^designation[0].use = $hl7TermMaintInfra#preferredForLanguage
* #active ^designation[0].value = "Aktiv"
```

Zur Einordnung, wie andere Herausgeber es machen: HL7 Schweiz (`ch.fhir.ig.ch-term`) und das Support-Paket von
tx.fhir.org (`fhir.tx.support`, R5) setzen kein `use`. ANS Frankreich (`ans.fr.terminologies`) und gematik
(`de.gematik.terminology`) verwenden SNOMED Synonym, Dänemark (`hl7.fhir.dk.core`) beides gemischt.

## 5. Am Rand: nicht übersetzte Codes

- condition-clinical: THO kennt seit jeher zusätzlich den Code `unknown`, R4 Core nicht. Das Supplement übersetzt
  alle R4-Codes, aber nicht `unknown`.
- observation-status: Der R4-Code `unknown` ist nicht übersetzt.

## 6. device-nametype: Nachfolger in THO unter eigener URL

THO enthält seit `hl7.terminology.r4#7.2.0` (geprüft bis 7.4.0) eine eigene Fassung von device-nametype:
`http://terminology.hl7.org/CodeSystem/device-nametype`, Version 1.0.0, mit den Codes `registered-name`,
`user-friendly-name` und `patient-reported-name`, dazu das ValueSet `http://terminology.hl7.org/ValueSet/device-nametype`.
Das sind die Codes aus R5 Core 5.0.0. R4 Core, R5 Core und THO tragen dieselbe OID `2.16.840.1.113883.4.642.4.1084`.

| Fassung | URL | Version | Codes |
|---|---|---|---|
| R4 Core | `http://hl7.org/fhir/device-nametype` | 4.0.1 | `udi-label-name`, `user-friendly-name`, `patient-reported-name`, `manufacturer-name`, `model-name`, `other` |
| R5 Core | `http://hl7.org/fhir/device-nametype` | 5.0.0 | `registered-name`, `user-friendly-name`, `patient-reported-name` |
| THO | `http://terminology.hl7.org/CodeSystem/device-nametype` | 1.0.0 | `registered-name`, `user-friendly-name`, `patient-reported-name` |

Für R4 ändert das nichts. Die THO-Fassung hat eine andere URL und ersetzt die Core-Fassung deshalb nicht.
`Device.deviceName.type` ist in R4 required an `http://hl7.org/fhir/ValueSet/device-nametype|4.0.1` gebunden, und dieses
ValueSet enthält die Core-Fassung mit den R4-Codes. Das Supplement auf `http://hl7.org/fhir/device-nametype|4.0.1` ist
also korrekt.

Im R6-Snapshot (`hl7.fhir.r6.core#6.0.0-snapshot1`) ist `Device.name.type` extensible an das THO-ValueSet
`http://terminology.hl7.org/ValueSet/device-nametype` gebunden. Für R6 oder für Profile, die an das THO-ValueSet binden,
bräuchte es deshalb ein eigenes Supplement für `http://terminology.hl7.org/CodeSystem/device-nametype|1.0.0`.

## Prüfumfang

- Grundlage sind die Pakete im lokalen FHIR-Paket-Cache: `hl7.fhir.r4.core#4.0.1`, `hl7.fhir.r5.core#5.0.0`,
  `hl7.terminology.r4` in den Releases 4.0.0, 5.0.0, 5.3.0, 6.2.0, 6.3.0, 6.5.0, 7.0.0, 7.1.0, 7.2.0, 7.3.0, 7.4.0, `hl7.terminology#7.4.0` und
  `hl7.terminology.r5#7.1.0`.
- Geprüft wurden `^supplements` (URL und Version) gegen `CodeSystem.url` und `CodeSystem.version`, die Codes jedes
  Supplements gegen die Codes der Zielversion, die Extension `codesystem-supplement-type` und das CodeSystem für
  `designation.use`.
- Für `designation-usage`, die Extension `codesystem-supplement-type` und device-nametype wurden alle 102 Pakete im Cache durchsucht,
  dazu die THO-Webseiten der Releases 1.0.0, 2.0.0, 3.0.0 und 7.4.0.
- `designation.use` wurde zusätzlich mit dem FHIR Validator 6.10.4 getestet (siehe Abschnitt 4), dazu der Quellcode
  von `ValueSetValidator` und `ValueSetExpander` in org.hl7.fhir.core gelesen. Die Praxis anderer Herausgeber stammt
  aus den CodeSystems mit `content = supplement` im XIG (packages2.fhir.org), jeweils in der neuesten Paketversion.
- Nicht selbst geprüft wurde das Verhalten der Werkzeuge bei Zielversion und Language Pack (Validator, IG Publisher,
  tx.fhir.org). Die Regeln dazu stammen aus Tests mit dem FHIR Validator 6.10.4, Stand 30.09.2026.
