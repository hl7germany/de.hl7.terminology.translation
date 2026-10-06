# Review der Übersetzungen

Stand: 06.10.2026 · FSH-Stand: PR #3 (Branch `widersprueche-beheben`)

Dieses Dokument zeigt für jeden übersetzten Code der 18 CodeSystem-Supplements die Übersetzung im FSH neben den beiden bereits
abgestimmten Fassungen. Der TC Terminologie wird gebeten, die Übersetzungen zu reviewen, vor allem die Codes in
Abschnitt 1.

| Spalte | Quelle |
|---|---|
| FSH | `^designation.value` in `input/fsh/`, Stand PR #3 |
| abgestimmt AT | mit HL7 Austria abgestimmte Übersetzungen (`HL7 Übersetzungen.xlsx`), über die Code-System-OID zugeordnet |
| abgestimmt HL7 DE | Spalte *vorläufige Übersetzung* der CSV `FHIR CodeSystem Übersetzungen`, der Stand, den HL7 Deutschland bereits abgestimmt hatte |

Status:

- **gleich**: Das FSH entspricht allen vorhandenen abgestimmten Fassungen.
- **AT ≠ HL7 DE**: Das FSH folgt abgestimmt AT, abgestimmt HL7 DE lautet anders.
- **≠ HL7 DE**: Es gibt nur eine Fassung abgestimmt HL7 DE, und das FSH weicht davon ab.
- **Schreibweise**: Das FSH unterscheidet sich von abgestimmt HL7 DE nur in Groß-/Kleinschreibung oder Leerzeichen.
- **nicht abgestimmt**: Für den Code gibt es weder eine Fassung abgestimmt AT noch abgestimmt HL7 DE.

## Übersicht

| Status | Codes |
|---|---:|
| gleich | 66 |
| AT ≠ HL7 DE | 19 |
| ≠ HL7 DE | 5 |
| Schreibweise | 3 |
| nicht abgestimmt | 78 |
| **gesamt** | **171** |

## 1. Zu entscheiden

Hier stehen alle Codes, deren Übersetzung im FSH nicht durch eine abgestimmte Fassung gedeckt ist: 24 Widersprüche
und 78 noch nicht abgestimmte Übersetzungen. Vorschläge stammen aus
[uebersetzungsvorschlaege-zur-abstimmung.md](uebersetzungsvorschlaege-zur-abstimmung.md), dort mit Begründung.

### 1a. Widerspruch zu einer abgestimmten Fassung (24 Codes)

Bisher gilt: Bei einem Widerspruch zwischen abgestimmt AT und abgestimmt HL7 DE folgt das FSH abgestimmt AT. Gibt es nur
eine Fassung abgestimmt HL7 DE, ist das FSH bisher unverändert geblieben.

| CodeSystem | Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|---|
| condition-clinical | `relapse` | Relapse | Rezidiv / Rückfall | Rezidiv / Rückfall | Rezidiv | AT ≠ HL7 DE |  |
| device-nametype | `user-friendly-name` | User Friendly name | Benutzerfreundlicher Name | – | Gebräuchlicher Name | ≠ HL7 DE |  |
| device-nametype | `patient-reported-name` | Patient Reported name | Patientenberichteter Name | – | Von Patient:in angegebener Name | ≠ HL7 DE | in PR #3 geändert, vorher „PatientInberichteter Name“, Grund siehe Abschnitt 2; Änderungsvorschlag MIO: „Von Patient/Patientin angegebener Name (AT)“; Anm. 2 |
| diagnostic-report-status | `final` | Final | Final | Final | Endgültig | AT ≠ HL7 DE | Anm. 4 |
| v3-ObservationInterpretation | `<` | Off scale low | Messbereich unterschritten | Messbereich unterschritten | Unterhalb der analytischen Grenze | AT ≠ HL7 DE | in der CSV als `kleinerals` |
| v3-ObservationInterpretation | `>` | Off scale high | Messbereich überschritten | Messbereich überschritten | Oberhalb der analytischen Grenze | AT ≠ HL7 DE | in der CSV als `größerals` |
| v3-ObservationInterpretation | `A` | Abnormal | Auffällig | Auffällig | Abnorm | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `AA` | Critical abnormal | Kritisch auffällig | Kritisch auffällig | Kritisch abnorm | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `CAR` | Carrier | Träger | Träger | Anlageträger | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `E` | Equivocal | Uneindeutig | Uneindeutig | Mehrdeutig | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `EX` | outside threshold | Außerhalb des Schwellenwerts | Außerhalb des Schwellenwerts | Interpretation außerhalb des Grenzwertes | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `HX` | above high threshold | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Grenzwertes | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `LX` | below low threshold | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Grenzwertes | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `NCL` | No CLSI defined breakpoint | Kein CLSI definierter Grenzwert | Kein CLSI definierter Grenzwert | Kein CLSI definierter Schwellenwert für Empfindlichkeit verfügbar | AT ≠ HL7 DE |  |
| v3-ObservationInterpretation | `N` | Normal | Normal (nicht numerisch) | Normal (nicht numerisch) | Normal | AT ≠ HL7 DE | in PR #3 geändert, vorher „Normal“, Grund siehe Abschnitt 2 |
| v3-ObservationInterpretation | `_ObservationInterpretationSusceptibility` | ObservationInterpretationSusceptibility | Interpretation der antimikrobiellen Resistenztestung | – | Interperation der antimikrobiellen Empfindlichkeit | ≠ HL7 DE | Tippfehler in der CSV: „Interperation“ statt „Interpretation“ |
| referencerange-meaning | `type` | Type | Generell | – | Typ | ≠ HL7 DE | Vorschlag: „Allgemeiner Typ“ |
| referencerange-meaning | `normal` | Normal Range | Normalbereich | Normalbereich | Referenzbereich | AT ≠ HL7 DE |  |
| referencerange-meaning | `therapeutic` | Therapeutic Desired Level | Therapeutischer Zielwert | Therapeutischer Zielwert | Therapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| referencerange-meaning | `pre` | Pre Therapeutic Desired Level | Prätherapeutischer Zielwert | Prätherapeutischer Zielwert | Prätherapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| referencerange-meaning | `post` | Post Therapeutic Desired Level | Posttherapeutischer Zielwert | Posttherapeutischer Zielwert | Posttherapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| referencerange-meaning | `endocrine` | Endocrine | Endokrinologisch adaptiert | – | Endokrin | ≠ HL7 DE |  |
| request-priority | `asap` | ASAP | Sehr dringend | Sehr dringend | Baldmöglichst | AT ≠ HL7 DE |  |
| request-priority | `stat` | STAT | Notfall | Notfall | Sofort | AT ≠ HL7 DE |  |

### 1b. Noch nicht abgestimmt (78 Codes)

Für diese Codes gibt es weder eine Fassung abgestimmt AT noch abgestimmt HL7 DE. Die Übersetzung im FSH stammt aus dem
Entwurf für das Package oder, wo der Hinweis es sagt, aus PR #3.

| CodeSystem | Code | Englisch | FSH | Hinweis |
|---|---|---|---|---|
| composition-attestation-mode | `legal` | Legal | Rechtliche Verantwortung |  |
| condition-ver-status | `entered-in-error` | Entered in Error | Fehleingabe |  |
| data-absent-reason | `asked-unknown` | Asked But Unknown | Erfragt, aber unbekannt |  |
| data-absent-reason | `temp-unknown` | Temporarily Unknown | Temporär unbekannt |  |
| data-absent-reason | `not-asked` | Not Asked | Nicht erfragt |  |
| data-absent-reason | `asked-declined` | Asked But Declined | Erfragt, aber abgelehnt |  |
| data-absent-reason | `masked` | Masked | Maskiert / vertraulich |  |
| data-absent-reason | `not-applicable` | Not Applicable | Nicht anwendbar |  |
| data-absent-reason | `unsupported` | Unsupported | Nicht unterstützt |  |
| data-absent-reason | `as-text` | As Text | Als Text |  |
| data-absent-reason | `error` | Error | Fehler |  |
| data-absent-reason | `not-a-number` | Not a Number (NaN) | Keine Zahl | Vorschlag: „Keine Zahl (NaN)“ |
| data-absent-reason | `negative-infinity` | Negative Infinity (NINF) | Negativ unendlich |  |
| data-absent-reason | `positive-infinity` | Positive Infinity (PINF) | Positiv unendlich |  |
| data-absent-reason | `not-performed` | Not Performed | Nicht durchgeführt |  |
| data-absent-reason | `not-permitted` | Not Permitted | Nicht erlaubt |  |
| device-nametype | `udi-label-name` | UDI Label name | UDI Kennzeichnungsname | Vorschlag: „UDI-Kennzeichnungsname“ |
| device-nametype | `manufacturer-name` | Manufacturer name | Herstellername |  |
| device-nametype | `model-name` | Model name | Modellname |  |
| device-nametype | `other` | other | Andere | in PR #3 geändert, vorher „Sonstige“, Grund siehe Abschnitt 2 |
| v3-ObservationInterpretation | `AC` | Anti-complementary substances present | Vorhandene antikomplementäre Substanzen | Vorschlag: „Antikomplementäre Substanzen vorhanden“; Code ist deprecated |
| v3-ObservationInterpretation | `Carrier` | Carrier | Träger | Code ist deprecated |
| v3-ObservationInterpretation | `H>` | Significantly high | Signifikant hoch | Code ist deprecated |
| v3-ObservationInterpretation | `HM` | Hold for Medical Review | Zur medizinischen Überprüfung zurückhalten | Code ist deprecated |
| v3-ObservationInterpretation | `L<` | Significantly low | Signifikant niedrig | Code ist deprecated |
| v3-ObservationInterpretation | `MS` | moderately susceptible | Mittlere Empfindlichkeit | Vorschlag: „Mäßig empfindlich“; Code ist deprecated |
| v3-ObservationInterpretation | `OBX` | Interpretation qualifiers in separate OBX segments | Bewertung in separaten OBX-Segmenten | in PR #3 geändert, vorher „Dolmetscherkennzeichen in separaten OBX Segmenten“, Grund siehe Abschnitt 2; Code ist deprecated |
| v3-ObservationInterpretation | `QCF` | Quality control failure | Versagen der Qualitätskontrolle | Vorschlag: „Qualitätskontrolle fehlgeschlagen“; Code ist deprecated |
| v3-ObservationInterpretation | `TOX` | Cytotoxic substance present | Zytotoxische Substanz vorhanden | Code ist deprecated |
| v3-ObservationInterpretation | `VS` | very susceptible | Sehr empfindlich | Code ist deprecated |
| observation-status | `registered` | Registered | Registriert |  |
| observation-status | `preliminary` | Preliminary | Vorläufig |  |
| observation-status | `final` | Final | Final | in PR #3 geändert, vorher „Abgeschlossen“, Grund siehe Abschnitt 2 |
| observation-status | `amended` | Amended | Überarbeitet | in PR #3 geändert, vorher „Geändert“, Grund siehe Abschnitt 2 |
| observation-status | `corrected` | Corrected | Korrigiert |  |
| observation-status | `cancelled` | Cancelled | Abgebrochen | in PR #3 geändert, vorher „Storniert“, Grund siehe Abschnitt 2 |
| observation-status | `entered-in-error` | Entered in Error | Fehleingabe | in PR #3 geändert, vorher „Irrtümliche Eingabe“, Grund siehe Abschnitt 2 |
| observation-status | `unknown` | Unknown | Unbekannt | neu in PR #3, Grund siehe Abschnitt 2 |
| quantity-comparator | `<` | Less than | Kleiner als |  |
| quantity-comparator | `<=` | Less or Equal to | Kleiner oder gleich |  |
| quantity-comparator | `>=` | Greater or Equal to | Größer oder gleich |  |
| quantity-comparator | `>` | Greater than | Größer als |  |
| specimen-status | `available` | Available | Verfügbar |  |
| specimen-status | `unavailable` | Unavailable | Nicht verfügbar |  |
| specimen-status | `unsatisfactory` | Unsatisfactory | Nicht geeignet |  |
| specimen-status | `entered-in-error` | Entered in Error | Fehleingabe |  |
| v2-0203 | `ACSN` | Accession ID | Eingangs-ID |  |
| v2-0203 | `BSNR` | Primary physician office number | Betriebsstättennummer |  |
| v2-0203 | `FILL` | Filler Identifier | Identifikator des Auftragnehmers |  |
| v2-0203 | `LACSN` | Laboratory Accession ID | Laborzugangs-ID | Vorschlag: „Laboreingangs-ID“ |
| v2-0203 | `MCN` | Microchip Number | Mikrochip-Nummer |  |
| v2-0203 | `PLAC` | Placer Identifier | Identifikator des Auftraggebers |  |
| v2-0203 | `SID` | Specimen ID | Proben-ID |  |
| v2-0203 | `SNO` | Serial Number | Seriennummer |  |
| v2-0203 | `USID` | Unique Specimen ID | Eindeutige Proben-ID |  |
| v2-0203 | `RI` | Resource identifier | Ressourcen-Identifikator | in PR #3 geändert, vorher „Identifier der Quelle“, Grund siehe Abschnitt 2 |
| v2-0373 | `ACID` | Acidification | Ansäuerung | in PR #3 geändert, vorher „Aufsäuerung“, Grund siehe Abschnitt 2 |
| v2-0373 | `ALK` | Alkalization | Alkalisierung |  |
| v2-0373 | `DEFB` | Defibrination | Defibrinierung |  |
| v2-0373 | `FILT` | Filtration | Filtration |  |
| v2-0373 | `LDLP` | LDL Precipitation | LDL-Ausfällung |  |
| v2-0373 | `NEUT` | Neutralization | Neutralisierung |  |
| v2-0373 | `RECA` | Recalification | Rekalzifizierung | in PR #3 geändert, vorher „Rekalkifizierung“, Grund siehe Abschnitt 2 |
| v2-0373 | `UFIL` | Ultrafiltration | Ultrafiltration |  |
| v2-0493 | `AUT` | Autolyzed | Autolysiert |  |
| v2-0493 | `CFU` | Centrifuged | Zentrifugiert |  |
| v2-0493 | `CLOT` | Clotted | Verklumpt | Vorschlag: „Geronnen“ |
| v2-0493 | `CON` | Contaminated | Kontaminiert |  |
| v2-0493 | `COOL` | Cool | Gekühlt |  |
| v2-0493 | `FROZ` | Frozen | Gefroren |  |
| v2-0493 | `HEM` | Hemolyzed | Hämolysiert |  |
| v2-0493 | `LIVE` | Live | Lebendig | Vorschlag: „Lebend“ |
| v2-0493 | `ROOM` | Room temperature | Raumtemperatur |  |
| v2-0493 | `SNR` | Sample not received | Probe nicht erhalten |  |
| v2-0916 | `F` | Patient was fasting prior to the procedure. | Nüchtern |  |
| v2-0916 | `FNA` | Fasting not asked of the patient at time of procedure. | Aufforderung zur Nüchternheit nicht erfolgt |  |
| v2-0916 | `NF` | The patient indicated they did not fast prior to the procedure. | Nicht nüchtern |  |
| v2-0916 | `NG` | Not Given - Patient was not asked at the time of the procedure. | Nüchternstatus nicht abgefragt |  |

## 2. Änderungen mit PR #3

Diese 13 Übersetzungen hat PR #3 geändert oder ergänzt. Ziel war, dass das FSH weder sich selbst noch den
abgestimmten Fassungen noch der Bedeutung der englischen Codes widerspricht.

| CodeSystem | Code | vorher | jetzt im FSH | abgestimmt AT | abgestimmt HL7 DE | Grund |
|---|---|---|---|---|---|---|
| condition-clinical | `unknown` | – | Unbekannt | – | Unbekannt | In R4-Instanzen gültig (`Condition.clinicalStatus` required gebunden) und Teil der Zielversion 3.0.0. „Unbekannt“ wie abgestimmt HL7 DE und wie `unknown` in anderen Status-CodeSystems (abgestimmt AT). |
| device-nametype | `patient-reported-name` | PatientInberichteter Name | Patientenberichteter Name | – | Von Patient:in angegebener Name | Im TC-Terminologie-Call am 01.10.2026 festgelegt. „Patientenberichteter“ ist als zusammengesetztes Wort bereits geschlechtsneutral, das Binnen-I in „PatientInberichteter“ ist nicht nötig. |
| device-nametype | `other` | Sonstige | Andere | – | – | „Andere“ ist abgestimmt AT für `other` (AdministrativeGender) und `OTH` (NullFlavor, ExceptionalValue). |
| v3-ObservationInterpretation | `N` | Normal | Normal (nicht numerisch) | Normal (nicht numerisch) | Normal | An abgestimmt AT angeglichen. |
| v3-ObservationInterpretation | `OBX` | Dolmetscherkennzeichen in separaten OBX Segmenten | Bewertung in separaten OBX-Segmenten | – | – | „Interpretation qualifiers“ sind keine Dolmetscher. „Bewertung“ wie der deutsche v2-Begriff für OBX-8 („Bewertung des Ergebnisses“). |
| observation-status | `final` | Abgeschlossen | Final | – | – | Einheitlich mit diagnostic-report-status (abgestimmt AT). „Abgeschlossen“ ist abgestimmt AT für `completed`. |
| observation-status | `amended` | Geändert | Überarbeitet | – | – | Einheitlich mit diagnostic-report-status (abgestimmt AT). |
| observation-status | `cancelled` | Storniert | Abgebrochen | – | – | Einheitlich mit diagnostic-report-status (abgestimmt AT). Definition: „The observation is unavailable because the measurement was not started or not completed (also sometimes called "aborted").“ |
| observation-status | `entered-in-error` | Irrtümliche Eingabe | Fehleingabe | – | – | Einheitlich mit condition-ver-status, diagnostic-report-status, specimen-status und abgestimmt AT (CompositionStatus, MedicationRequestStatus, MedicationStatusCodes). |
| observation-status | `unknown` | – | Unbekannt | – | – | In R4-Instanzen gültig (`Observation.status` required gebunden). „Unbekannt“ wie `unknown` in anderen Status-CodeSystems (abgestimmt AT). |
| v2-0203 | `RI` | Identifier der Quelle | Ressourcen-Identifikator | – | – | Laut v2-Kommentar sind „resources“ zum Beispiel Personen, Tiere, ein Untersuchungsraum oder eine Organisation, also Ressourcen und keine Quelle. Dazu „Identifikator“ statt des englischen „Identifier“. |
| v2-0373 | `ACID` | Aufsäuerung | Ansäuerung | – | – | Fachbegriff „Ansäuerung“. |
| v2-0373 | `RECA` | Rekalkifizierung | Rekalzifizierung | – | – | Übliche Schreibweise (vgl. Rekalzifizierungszeit). |

## 3. Alle Codes je CodeSystem

### Freigabetyp (`composition-attestation-mode`)

`http://hl7.org/fhir/composition-attestation-mode|4.0.1` · Datei [CodeSystem-composition-attestation-mode-de-de.fsh](../input/fsh/CodeSystem-composition-attestation-mode-de-de.fsh) · Das Supplement übersetzt 1 von 4 Codes. 1 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `legal` | Legal | Rechtliche Verantwortung | – | – | nicht abgestimmt |  |

### Diagnose Klinischer Status (`condition-clinical`)

`http://terminology.hl7.org/CodeSystem/condition-clinical|3.0.0` · Datei [CodeSystem-condition-clinical-de-de.fsh](../input/fsh/CodeSystem-condition-clinical-de-de.fsh) · 5 gleich, 1 AT ≠ HL7 DE, 1 Schreibweise

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `active` | Active | Aktiv | Aktiv | Aktiv | gleich |  |
| `recurrence` | Recurrence | Wiederholtes Auftreten | Wiederholtes Auftreten | Wiederholtes Auftreten | gleich | Anm. 1 |
| `relapse` | Relapse | Rezidiv / Rückfall | Rezidiv / Rückfall | Rezidiv | AT ≠ HL7 DE |  |
| `inactive` | Inactive | Inaktiv | Inaktiv | Inaktiv | gleich |  |
| `remission` | Remission | Remission | Remission | Remission | gleich |  |
| `resolved` | Resolved | Nicht mehr vorhanden | Nicht mehr vorhanden | Nicht mehr Vorhanden | Schreibweise |  |
| `unknown` | Unknown | Unbekannt | – | Unbekannt | gleich | neu in PR #3, Grund siehe Abschnitt 2; in der CSV als `unkown` |

### Diagnosesicherheit (`condition-ver-status`)

`http://terminology.hl7.org/CodeSystem/condition-ver-status|2.0.1` · Datei [CodeSystem-condition-ver-status-de-de.fsh](../input/fsh/CodeSystem-condition-ver-status-de-de.fsh) · 5 gleich, 1 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `unconfirmed` | Unconfirmed | Unbestätigt | Unbestätigt | – | gleich |  |
| `provisional` | Provisional | Vorläufig | Vorläufig | – | gleich |  |
| `differential` | Differential | Differenzial | Differenzial | – | gleich |  |
| `confirmed` | Confirmed | Bestätigt | Bestätigt | – | gleich |  |
| `refuted` | Refuted | Ausgeschlossen | Ausgeschlossen | – | gleich |  |
| `entered-in-error` | Entered in Error | Fehleingabe | – | – | nicht abgestimmt |  |

### Begründung Nichtverfügbarkeit (`data-absent-reason`)

`http://terminology.hl7.org/CodeSystem/data-absent-reason|2.0.0` · Datei [CodeSystem-data-absent-reason-de-de.fsh](../input/fsh/CodeSystem-data-absent-reason-de-de.fsh) · 14 nicht abgestimmt, 1 gleich

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `unknown` | Unknown | Unbekannt | Unbekannt | – | gleich |  |
| `asked-unknown` | Asked But Unknown | Erfragt, aber unbekannt | – | – | nicht abgestimmt |  |
| `temp-unknown` | Temporarily Unknown | Temporär unbekannt | – | – | nicht abgestimmt |  |
| `not-asked` | Not Asked | Nicht erfragt | – | – | nicht abgestimmt |  |
| `asked-declined` | Asked But Declined | Erfragt, aber abgelehnt | – | – | nicht abgestimmt |  |
| `masked` | Masked | Maskiert / vertraulich | – | – | nicht abgestimmt |  |
| `not-applicable` | Not Applicable | Nicht anwendbar | – | – | nicht abgestimmt |  |
| `unsupported` | Unsupported | Nicht unterstützt | – | – | nicht abgestimmt |  |
| `as-text` | As Text | Als Text | – | – | nicht abgestimmt |  |
| `error` | Error | Fehler | – | – | nicht abgestimmt |  |
| `not-a-number` | Not a Number (NaN) | Keine Zahl | – | – | nicht abgestimmt | Vorschlag: „Keine Zahl (NaN)“ |
| `negative-infinity` | Negative Infinity (NINF) | Negativ unendlich | – | – | nicht abgestimmt |  |
| `positive-infinity` | Positive Infinity (PINF) | Positiv unendlich | – | – | nicht abgestimmt |  |
| `not-performed` | Not Performed | Nicht durchgeführt | – | – | nicht abgestimmt |  |
| `not-permitted` | Not Permitted | Nicht erlaubt | – | – | nicht abgestimmt |  |

### Art der Bezeichnung des Geräts (`device-nametype`)

`http://hl7.org/fhir/device-nametype|4.0.1` · Datei [CodeSystem-device-nametype-de-de.fsh](../input/fsh/CodeSystem-device-nametype-de-de.fsh) · 4 nicht abgestimmt, 2 ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `udi-label-name` | UDI Label name | UDI Kennzeichnungsname | – | – | nicht abgestimmt | Vorschlag: „UDI-Kennzeichnungsname“ |
| `user-friendly-name` | User Friendly name | Benutzerfreundlicher Name | – | Gebräuchlicher Name | ≠ HL7 DE |  |
| `patient-reported-name` | Patient Reported name | Patientenberichteter Name | – | Von Patient:in angegebener Name | ≠ HL7 DE | in PR #3 geändert, vorher „PatientInberichteter Name“, Grund siehe Abschnitt 2; Änderungsvorschlag MIO: „Von Patient/Patientin angegebener Name (AT)“; Anm. 2 |
| `manufacturer-name` | Manufacturer name | Herstellername | – | – | nicht abgestimmt |  |
| `model-name` | Model name | Modellname | – | – | nicht abgestimmt |  |
| `other` | other | Andere | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Sonstige“, Grund siehe Abschnitt 2 |
| `registered-name` | – | – | – | Eingetragener Name | nur CSV | Code gibt es in dieser CodeSystem-Version nicht (R5-Code); CSV Zeile 46 |

### Status des Untersuchungsbefunds (`diagnostic-report-status`)

`http://hl7.org/fhir/diagnostic-report-status|4.0.1` · Datei [CodeSystem-diagnostic-report-status-de-de.fsh](../input/fsh/CodeSystem-diagnostic-report-status-de-de.fsh) · 9 gleich, 1 AT ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `registered` | Registered | Registriert | Registriert | Registriert | gleich |  |
| `partial` | Partial | Unvollständig | Unvollständig | Unvollständig | gleich | Anm. 3 |
| `preliminary` | Preliminary | Vorläufig | Vorläufig | Vorläufig | gleich |  |
| `final` | Final | Final | Final | Endgültig | AT ≠ HL7 DE | Anm. 4 |
| `amended` | Amended | Überarbeitet | Überarbeitet | Überarbeitet | gleich |  |
| `corrected` | Corrected | Korrigiert | Korrigiert | Korrigiert | gleich |  |
| `appended` | Appended | Ergänzt | Ergänzt | Ergänzt | gleich | Anm. 5 |
| `cancelled` | Cancelled | Abgebrochen | Abgebrochen | Abgebrochen | gleich |  |
| `entered-in-error` | Entered in Error | Fehleingabe | Fehleingabe | Fehleingabe | gleich |  |
| `unknown` | Unknown | Unbekannt | Unbekannt | Unbekannt | gleich |  |

### Interpretation der Beobachtung (`v3-ObservationInterpretation`)

`http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation|4.0.0` · Datei [CodeSystem-observation-interpretation-de-de.fsh](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh) · 33 gleich, 11 AT ≠ HL7 DE, 10 nicht abgestimmt, 2 Schreibweise, 1 ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `<` | Off scale low | Messbereich unterschritten | Messbereich unterschritten | Unterhalb der analytischen Grenze | AT ≠ HL7 DE | in der CSV als `kleinerals` |
| `>` | Off scale high | Messbereich überschritten | Messbereich überschritten | Oberhalb der analytischen Grenze | AT ≠ HL7 DE | in der CSV als `größerals` |
| `A` | Abnormal | Auffällig | Auffällig | Abnorm | AT ≠ HL7 DE |  |
| `AA` | Critical abnormal | Kritisch auffällig | Kritisch auffällig | Kritisch abnorm | AT ≠ HL7 DE |  |
| `AC` | Anti-complementary substances present | Vorhandene antikomplementäre Substanzen | – | – | nicht abgestimmt | Vorschlag: „Antikomplementäre Substanzen vorhanden“; Code ist deprecated |
| `B` | Better | Besser | Besser | Besser | gleich |  |
| `CAR` | Carrier | Träger | Träger | Anlageträger | AT ≠ HL7 DE |  |
| `Carrier` | Carrier | Träger | – | – | nicht abgestimmt | Code ist deprecated |
| `D` | Significant change down | Signifikanter Rückgang | Signifikanter Rückgang | Signifikanter Rückgang | gleich |  |
| `DET` | Detected | Nachgewiesen | Nachgewiesen | Nachgewiesen | gleich |  |
| `E` | Equivocal | Uneindeutig | Uneindeutig | Mehrdeutig | AT ≠ HL7 DE |  |
| `EX` | outside threshold | Außerhalb des Schwellenwerts | Außerhalb des Schwellenwerts | Interpretation außerhalb des Grenzwertes | AT ≠ HL7 DE |  |
| `EXP` | Expected | Erwartet | Erwartet | Erwartet | gleich |  |
| `H` | High | Hoch | Hoch | Hoch | gleich |  |
| `H>` | Significantly high | Signifikant hoch | – | – | nicht abgestimmt | Code ist deprecated |
| `HH` | Critical high | Kritisch hoch | Kritisch hoch | Kritisch Hoch | Schreibweise |  |
| `HM` | Hold for Medical Review | Zur medizinischen Überprüfung zurückhalten | – | – | nicht abgestimmt | Code ist deprecated |
| `HU` | Significantly high | Signifikant hoch | Signifikant hoch | Signifikant hoch | gleich |  |
| `HX` | above high threshold | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Grenzwertes | AT ≠ HL7 DE |  |
| `I` | Intermediate | Intermediär | Intermediär | Intermediär | gleich |  |
| `IE` | Insufficient evidence | Evidenz unzureichend | Evidenz unzureichend | Evidenz unzureichend | gleich |  |
| `IND` | Indeterminate | Unbestimmbar | Unbestimmbar | Unbestimmbar | gleich |  |
| `L` | Low | Niedrig | Niedrig | Niedrig | gleich |  |
| `L<` | Significantly low | Signifikant niedrig | – | – | nicht abgestimmt | Code ist deprecated |
| `LL` | Critical low | Kritisch niedrig | Kritisch niedrig | Kritisch niedrig | gleich |  |
| `LU` | Significantly low | Signifikant niedrig | Signifikant niedrig | Signifikant niedrig | gleich |  |
| `LX` | below low threshold | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Grenzwertes | AT ≠ HL7 DE |  |
| `MS` | moderately susceptible | Mittlere Empfindlichkeit | – | – | nicht abgestimmt | Vorschlag: „Mäßig empfindlich“; Code ist deprecated |
| `NCL` | No CLSI defined breakpoint | Kein CLSI definierter Grenzwert | Kein CLSI definierter Grenzwert | Kein CLSI definierter Schwellenwert für Empfindlichkeit verfügbar | AT ≠ HL7 DE |  |
| `N` | Normal | Normal (nicht numerisch) | Normal (nicht numerisch) | Normal | AT ≠ HL7 DE | in PR #3 geändert, vorher „Normal“, Grund siehe Abschnitt 2 |
| `ND` | Not detected | Nicht nachgewiesen | Nicht nachgewiesen | Nicht nachgewiesen | gleich |  |
| `NEG` | Negative | Negativ | Negativ | Negativ | gleich |  |
| `NR` | Non-reactive | Nicht reaktiv | Nicht reaktiv | Nicht reaktiv | gleich |  |
| `NS` | Non-susceptible | Nicht empfindlich | Nicht empfindlich | Nicht empfindlich | gleich |  |
| `OBX` | Interpretation qualifiers in separate OBX segments | Bewertung in separaten OBX-Segmenten | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Dolmetscherkennzeichen in separaten OBX Segmenten“, Grund siehe Abschnitt 2; Code ist deprecated |
| `ObservationInterpretationDetection` | ObservationInterpretationDetection | Feststellungsinterpretation | – | Feststellungsinterpretation | gleich |  |
| `ObservationInterpretationExpectation` | ObservationInterpretationExpectation | Erwartungsinterpretation | – | Erwartungsinterpretation | gleich |  |
| `POS` | Positive | Positiv | Positiv | Positiv | gleich |  |
| `QCF` | Quality control failure | Versagen der Qualitätskontrolle | – | – | nicht abgestimmt | Vorschlag: „Qualitätskontrolle fehlgeschlagen“; Code ist deprecated |
| `R` | Resistant | Resistent | Resistent | Resistent | gleich |  |
| `RR` | Reactive | Reaktiv | Reaktiv | Reaktiv | gleich |  |
| `ReactivityObservationInterpretation` | ReactivityObservationInterpretation | Reaktivitätsinterpretation | – | Reaktivitätsinterpretation | gleich |  |
| `S` | Susceptible | Empfindlich | Empfindlich | Empfindlich | gleich |  |
| `SDD` | Susceptible-dose dependent | Dosis- / Konzentrationsabhängige Empfindlichkeit | Dosis- / Konzentrationsabhängige Empfindlichkeit | Dosis-/Konzentrationsabhängige Empfindlichkeit | Schreibweise |  |
| `SYN-R` | Synergy - resistant | Resistent gegenüber Substanzkombination | Resistent gegenüber Substanzkombination | Resistent gegenüber Substanzkombination | gleich |  |
| `SYN-S` | Synergy - susceptible | Empfindlich gegenüber Substanzkombination | Empfindlich gegenüber Substanzkombination | Empfindlich gegenüber Substanzkombination | gleich |  |
| `TOX` | Cytotoxic substance present | Zytotoxische Substanz vorhanden | – | – | nicht abgestimmt | Code ist deprecated |
| `U` | Significant change up | Signifikanter Anstieg | Signifikanter Anstieg | Signifikanter Anstieg | gleich |  |
| `UNE` | Unexpected | Unerwartet | Unerwartet | Unerwartet | gleich |  |
| `VS` | very susceptible | Sehr empfindlich | – | – | nicht abgestimmt | Code ist deprecated |
| `W` | Worse | Schlechter | Schlechter | Schlechter | gleich |  |
| `WR` | Weakly reactive | Schwach reaktiv | Schwach reaktiv | Schwach reaktiv | gleich |  |
| `_GeneticObservationInterpretation` | GeneticObservationInterpretation | Interpretation der genetischen Analyse | – | Interpretation der genetischen Analyse | gleich |  |
| `_ObservationInterpretationChange` | ObservationInterpretationChange | Änderungsverlauf | – | Änderungsverlauf | gleich | Anm. 6 |
| `_ObservationInterpretationExceptions` | ObservationInterpretationExceptions | Ausnahmewertinterpretation | – | Ausnahmewertinterpretation | gleich |  |
| `_ObservationInterpretationNormality` | ObservationInterpretationNormality | Normalitätsinterpretation | – | Normalitätsinterpretation | gleich |  |
| `_ObservationInterpretationSusceptibility` | ObservationInterpretationSusceptibility | Interpretation der antimikrobiellen Resistenztestung | – | Interperation der antimikrobiellen Empfindlichkeit | ≠ HL7 DE | Tippfehler in der CSV: „Interperation“ statt „Interpretation“ |

### Status der Beobachtung (`observation-status`)

`http://hl7.org/fhir/observation-status|4.0.1` · Datei [CodeSystem-observation-status-de-de.fsh](../input/fsh/CodeSystem-observation-status-de-de.fsh) · 8 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `registered` | Registered | Registriert | – | – | nicht abgestimmt |  |
| `preliminary` | Preliminary | Vorläufig | – | – | nicht abgestimmt |  |
| `final` | Final | Final | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Abgeschlossen“, Grund siehe Abschnitt 2 |
| `amended` | Amended | Überarbeitet | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Geändert“, Grund siehe Abschnitt 2 |
| `corrected` | Corrected | Korrigiert | – | – | nicht abgestimmt |  |
| `cancelled` | Cancelled | Abgebrochen | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Storniert“, Grund siehe Abschnitt 2 |
| `entered-in-error` | Entered in Error | Fehleingabe | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Irrtümliche Eingabe“, Grund siehe Abschnitt 2 |
| `unknown` | Unknown | Unbekannt | – | – | nicht abgestimmt | neu in PR #3, Grund siehe Abschnitt 2 |

### Vergleichsoperator für Mengenangaben (`quantity-comparator`)

`http://hl7.org/fhir/quantity-comparator|4.0.1` · Datei [CodeSystem-quantity-comparator-de-de.fsh](../input/fsh/CodeSystem-quantity-comparator-de-de.fsh) · 4 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `<` | Less than | Kleiner als | – | – | nicht abgestimmt |  |
| `<=` | Less or Equal to | Kleiner oder gleich | – | – | nicht abgestimmt |  |
| `>=` | Greater or Equal to | Größer oder gleich | – | – | nicht abgestimmt |  |
| `>` | Greater than | Größer als | – | – | nicht abgestimmt |  |

### Richtgrenzen-Typ (`referencerange-meaning`)

`http://terminology.hl7.org/CodeSystem/referencerange-meaning|1.0.1` · Datei [CodeSystem-referencerange-meaning-de-de.fsh](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh) · 7 gleich, 4 AT ≠ HL7 DE, 2 ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `type` | Type | Generell | – | Typ | ≠ HL7 DE | Vorschlag: „Allgemeiner Typ“ |
| `normal` | Normal Range | Normalbereich | Normalbereich | Referenzbereich | AT ≠ HL7 DE |  |
| `recommended` | Recommended Range | Empfohlener Bereich | Empfohlener Bereich | Empfohlener Bereich | gleich |  |
| `treatment` | Treatment Range | Behandlungsbereich | Behandlungsbereich | Behandlungsbereich | gleich |  |
| `therapeutic` | Therapeutic Desired Level | Therapeutischer Zielwert | Therapeutischer Zielwert | Therapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| `pre` | Pre Therapeutic Desired Level | Prätherapeutischer Zielwert | Prätherapeutischer Zielwert | Prätherapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| `post` | Post Therapeutic Desired Level | Posttherapeutischer Zielwert | Posttherapeutischer Zielwert | Posttherapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| `endocrine` | Endocrine | Endokrinologisch adaptiert | – | Endokrin | ≠ HL7 DE |  |
| `pre-puberty` | Pre-Puberty | Präpubertär | Präpubertär | Präpubertär | gleich |  |
| `follicular` | Follicular Stage | Follikelphase | Follikelphase | Follikelphase | gleich | Anm. 7 |
| `midcycle` | MidCycle | Zyklusmitte | Zyklusmitte | Zyklusmitte | gleich |  |
| `luteal` | Luteal | Gelbkörperphase | Gelbkörperphase | Gelkörperphase | gleich | Tippfehler in der CSV: „Gelkörperphase“ statt „Gelbkörperphase“ |
| `postmenopausal` | Post-Menopause | Postmenopausal | Postmenopausal | Postmenopausal | gleich |  |

### Dringlichkeit der Anforderung (`request-priority`)

`http://hl7.org/fhir/request-priority|4.0.1` · Datei [CodeSystem-request-priority-de-de.fsh](../input/fsh/CodeSystem-request-priority-de-de.fsh) · 2 gleich, 2 AT ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `routine` | Routine | Routine | Routine | Routine | gleich |  |
| `urgent` | Urgent | Dringend | Dringend | Dringend | gleich |  |
| `asap` | ASAP | Sehr dringend | Sehr dringend | Baldmöglichst | AT ≠ HL7 DE |  |
| `stat` | STAT | Notfall | Notfall | Sofort | AT ≠ HL7 DE |  |

### Geschlechtsparameter für die klinische Verwendung (`sex-parameter-for-clinical-use`)

`http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use|2.0.0` · Datei [CodeSystem-sex-parameter-for-clinical-use-de-de.fsh](../input/fsh/CodeSystem-sex-parameter-for-clinical-use-de-de.fsh) · 3 gleich

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `female-typical` | Apply female-typical setting or reference range | Anwendung eines frauentypischen Settings oder Referenzbereichs | Anwendung eines frauentypischen Settings oder Referenzbereichs | – | gleich |  |
| `male-typical` | Apply male-typical setting or reference range | Anwendung eines männertypischen Settings oder Referenzbereichs | Anwendung eines männertypischen Settings oder Referenzbereichs | – | gleich |  |
| `specified` | Apply specified setting or reference range | Anwendung eines spezifischen Settings oder Referenzbereichs | Anwendung eines spezifischen Settings oder Referenzbereichs | – | gleich |  |

### Status des Probenmaterials (`specimen-status`)

`http://hl7.org/fhir/specimen-status|4.0.1` · Datei [CodeSystem-specimen-status-de-de.fsh](../input/fsh/CodeSystem-specimen-status-de-de.fsh) · 4 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `available` | Available | Verfügbar | – | – | nicht abgestimmt |  |
| `unavailable` | Unavailable | Nicht verfügbar | – | – | nicht abgestimmt |  |
| `unsatisfactory` | Unsatisfactory | Nicht geeignet | – | – | nicht abgestimmt |  |
| `entered-in-error` | Entered in Error | Fehleingabe | – | – | nicht abgestimmt |  |

### Typ des Identifiers (`v2-0203`)

`http://terminology.hl7.org/CodeSystem/v2-0203|5.0.0` · Datei [CodeSystem-v2-0203-de-de.fsh](../input/fsh/CodeSystem-v2-0203-de-de.fsh) · Das Supplement übersetzt 10 von 147 Codes. 10 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `ACSN` | Accession ID | Eingangs-ID | – | – | nicht abgestimmt |  |
| `BSNR` | Primary physician office number | Betriebsstättennummer | – | – | nicht abgestimmt |  |
| `FILL` | Filler Identifier | Identifikator des Auftragnehmers | – | – | nicht abgestimmt |  |
| `LACSN` | Laboratory Accession ID | Laborzugangs-ID | – | – | nicht abgestimmt | Vorschlag: „Laboreingangs-ID“ |
| `MCN` | Microchip Number | Mikrochip-Nummer | – | – | nicht abgestimmt |  |
| `PLAC` | Placer Identifier | Identifikator des Auftraggebers | – | – | nicht abgestimmt |  |
| `SID` | Specimen ID | Proben-ID | – | – | nicht abgestimmt |  |
| `SNO` | Serial Number | Seriennummer | – | – | nicht abgestimmt |  |
| `USID` | Unique Specimen ID | Eindeutige Proben-ID | – | – | nicht abgestimmt |  |
| `RI` | Resource identifier | Ressourcen-Identifikator | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Identifier der Quelle“, Grund siehe Abschnitt 2 |

### Probenverarbeitungsmethode (`v2-0373`)

`http://terminology.hl7.org/CodeSystem/v2-0373|3.0.0` · Datei [CodeSystem-v2-0373-de-de.fsh](../input/fsh/CodeSystem-v2-0373-de-de.fsh) · 8 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `ACID` | Acidification | Ansäuerung | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Aufsäuerung“, Grund siehe Abschnitt 2 |
| `ALK` | Alkalization | Alkalisierung | – | – | nicht abgestimmt |  |
| `DEFB` | Defibrination | Defibrinierung | – | – | nicht abgestimmt |  |
| `FILT` | Filtration | Filtration | – | – | nicht abgestimmt |  |
| `LDLP` | LDL Precipitation | LDL-Ausfällung | – | – | nicht abgestimmt |  |
| `NEUT` | Neutralization | Neutralisierung | – | – | nicht abgestimmt |  |
| `RECA` | Recalification | Rekalzifizierung | – | – | nicht abgestimmt | in PR #3 geändert, vorher „Rekalkifizierung“, Grund siehe Abschnitt 2 |
| `UFIL` | Ultrafiltration | Ultrafiltration | – | – | nicht abgestimmt |  |

### Probenzustand (`v2-0493`)

`http://terminology.hl7.org/CodeSystem/v2-0493|3.0.0` · Datei [CodeSystem-v2-0493-de-de.fsh](../input/fsh/CodeSystem-v2-0493-de-de.fsh) · 10 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `AUT` | Autolyzed | Autolysiert | – | – | nicht abgestimmt |  |
| `CFU` | Centrifuged | Zentrifugiert | – | – | nicht abgestimmt |  |
| `CLOT` | Clotted | Verklumpt | – | – | nicht abgestimmt | Vorschlag: „Geronnen“ |
| `CON` | Contaminated | Kontaminiert | – | – | nicht abgestimmt |  |
| `COOL` | Cool | Gekühlt | – | – | nicht abgestimmt |  |
| `FROZ` | Frozen | Gefroren | – | – | nicht abgestimmt |  |
| `HEM` | Hemolyzed | Hämolysiert | – | – | nicht abgestimmt |  |
| `LIVE` | Live | Lebendig | – | – | nicht abgestimmt | Vorschlag: „Lebend“ |
| `ROOM` | Room temperature | Raumtemperatur | – | – | nicht abgestimmt |  |
| `SNR` | Sample not received | Probe nicht erhalten | – | – | nicht abgestimmt |  |

### Nüchternstatus (`v2-0916`)

`http://terminology.hl7.org/CodeSystem/v2-0916|3.0.0` · Datei [CodeSystem-v2-0916-de-de.fsh](../input/fsh/CodeSystem-v2-0916-de-de.fsh) · 4 nicht abgestimmt

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `F` | Patient was fasting prior to the procedure. | Nüchtern | – | – | nicht abgestimmt |  |
| `FNA` | Fasting not asked of the patient at time of procedure. | Aufforderung zur Nüchternheit nicht erfolgt | – | – | nicht abgestimmt |  |
| `NF` | The patient indicated they did not fast prior to the procedure. | Nicht nüchtern | – | – | nicht abgestimmt |  |
| `NG` | Not Given - Patient was not asked at the time of the procedure. | Nüchternstatus nicht abgefragt | – | – | nicht abgestimmt |  |

### Art der Beteiligung (`v3-ParticipationType`)

`http://terminology.hl7.org/CodeSystem/v3-ParticipationType|7.0.0` · Datei [CodeSystem-v3-participationtype-de-de.fsh](../input/fsh/CodeSystem-v3-participationtype-de-de.fsh) · Das Supplement übersetzt 1 von 62 Codes. 1 gleich

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `VRF` | verifier | Verifizierende Person | Verifizierende Person | – | gleich |  |

## Anmerkungen aus der CSV

Begründungen aus der Spalte *Begründung* der CSV, wörtlich übernommen.

1. condition-clinical `recurrence` (CSV Zeile 33): Hier würden wir uns eine klarere Abgrenzung der Übersetzungen von "relapse" und "recurrence" wünschen; "Rezidiv" und "Wiederauftreten" haben im klinischen Alltag eine sehr ähnliche Bedeutung. Der Beschreibung der Codes von HL7 mein "relapse" eher das wiederholte, ggf. mehrfache Auftreten eines in sich abgeschlossene Episode (z.B. wiederkehrende Harnwegsinfektionen, jedoch unterschiedliche Episoden mit unterschiedlichen auslösenden Keimen), während "relapse" das (ggf. auch nur einmalige) wieder aufflammen derselben Erkrankung (z.B. Rezidiv einer bereits zuvor bekannten Krebserkrankung) widerspiegelt. "Rezidiv" würde daher am besten zu"relapse" passen (im Vergleich zur Beschreibung bei HL7 und wie eine solche Situation im klinischen Alltag bezeichnet werden würde); für "recurrence" würden wie einen Fomrulierung wie "Wiederholtes Auftreten" bevorzugen.
2. device-nametype `patient-reported-name` (CSV Zeile 48): Gechlechterneurtral, "patientenberichtet" kein gebräuchlicher Begriff
3. diagnostic-report-status `partial` (CSV Zeile 50): ein Wort, keine Verneinung vorangestellt
4. diagnostic-report-status `final` (CSV Zeile 52): Im klinischen Alltag ist "endgültig" gebräuchliche das Pendent zu "vorläufig", um den Status von Arztbriefen und Befunden zu beschreiben.
5. diagnostic-report-status `appended` (CSV Zeile 55): Nach der HL7-Definition des englischen Codes, wäre "ergänzt" aus unserer Sicht etwas passender und gebräuchlicher im Kontext von Befunden.
6. v3-ObservationInterpretation `_ObservationInterpretationChange` (CSV Zeile 170): Einheitliche Formulierung (also "Interpretation der XY" analog zu Zeile 166), klingt in den meisten Fällen (also die anderen Codes mit "Interpretation" wie Zeiele 173, 177 usw.) etwas verständlicher
7. referencerange-meaning `follicular` (CSV Zeile 136): Analog zu Gelbköper"phase", gebräuchlicherer Begriff im medizinischen Kontext

## Quellen und Vorgehen

- FSH: `input/fsh/*.fsh` im Stand von PR #3. Die Spalte „vorher“ in Abschnitt 2 ist der Stand auf `main`.
- Englisch: Display aus der Version des CodeSystems, die das Supplement in `^supplements` angibt (`hl7.fhir.r4.core#4.0.1` bzw. `hl7.terminology.r4#7.4.0`).
- abgestimmt AT: `HL7 Übersetzungen.xlsx`, Zuordnung über die Code-System-OID, Details in [abgleich-abgestimmt-at.md](abgleich-abgestimmt-at.md).
- abgestimmt HL7 DE: `FHIR CodeSystem Übersetzungen - FHIR CodeSystem Übersetzungen.csv`, Zuordnung über die CodeSystem-URL. In der CSV stehen `<` und `>` als `kleinerals` und `größerals` und `unknown` als `unkown`, diese Codes sind entsprechend zugeordnet. Details in [abgleich-abgestimmt-hl7de.md](abgleich-abgestimmt-hl7de.md).
- Verglichen wurde wörtlich nach Entfernen von Leerzeichen am Anfang und Ende.
