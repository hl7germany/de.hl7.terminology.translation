# Review der Übersetzungen

Stand: 06.10.2026 · FSH-Stand: PR #3 (Branch `widersprueche-beheben`)

Dieses Dokument zeigt für jeden Code der 18 CodeSystem-Supplements die Übersetzung im FSH neben den beiden bereits
abgestimmten Fassungen. Der TC Terminologie wird gebeten, die Übersetzungen zu reviewen, vor allem die Entscheidungspunkte
in Abschnitt 1.

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
- **offen**: Für den Code gibt es noch keine abgestimmte Fassung.
- **fehlt**: Der Code hat im FSH keine Übersetzung.

## Übersicht

| Status | Codes |
|---|---:|
| gleich | 66 |
| AT ≠ HL7 DE | 19 |
| ≠ HL7 DE | 5 |
| Schreibweise | 3 |
| offen | 78 |
| fehlt | 3 |
| **gesamt** | **174** |

## 1. Entscheidungspunkte

Bei diesen 24 Codes widerspricht das FSH einer abgestimmten Fassung. Bisher gilt: Bei einem Widerspruch zwischen
abgestimmt AT und abgestimmt HL7 DE folgt das FSH abgestimmt AT. Gibt es nur eine Fassung abgestimmt HL7 DE, ist das FSH
bisher unverändert geblieben.

| CodeSystem | Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|---|
| condition-clinical | `relapse` | Relapse | Rezidiv / Rückfall | Rezidiv / Rückfall | Rezidiv | AT ≠ HL7 DE |  |
| device-nametype | `user-friendly-name` | User Friendly name | Benutzerfreundlicher Name | – | Gebräuchlicher Name | ≠ HL7 DE |  |
| device-nametype | `patient-reported-name` | Patient Reported name | Patientenberichteter Name | – | Von Patient:in angegebener Name | ≠ HL7 DE | in PR #3 geändert, vorher „PatientInberichteter Name“; Änderungsvorschlag MIO: „Von Patient/Patientin angegebener Name (AT)“; Anm. 2 |
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
| v3-ObservationInterpretation | `N` | Normal | Normal (nicht numerisch) | Normal (nicht numerisch) | Normal | AT ≠ HL7 DE | in PR #3 geändert, vorher „Normal“ |
| v3-ObservationInterpretation | `_ObservationInterpretationSusceptibility` | ObservationInterpretationSusceptibility | Interpretation der antimikrobiellen Resistenztestung | – | Interperation der antimikrobiellen Empfindlichkeit | ≠ HL7 DE | Tippfehler in der CSV: „Interperation“ statt „Interpretation“ |
| referencerange-meaning | `type` | Type | Generell | – | Typ | ≠ HL7 DE |  |
| referencerange-meaning | `normal` | Normal Range | Normalbereich | Normalbereich | Referenzbereich | AT ≠ HL7 DE |  |
| referencerange-meaning | `therapeutic` | Therapeutic Desired Level | Therapeutischer Zielwert | Therapeutischer Zielwert | Therapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| referencerange-meaning | `pre` | Pre Therapeutic Desired Level | Prätherapeutischer Zielwert | Prätherapeutischer Zielwert | Prätherapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| referencerange-meaning | `post` | Post Therapeutic Desired Level | Posttherapeutischer Zielwert | Posttherapeutischer Zielwert | Posttherapeutisch gewünschtes Level | AT ≠ HL7 DE |  |
| referencerange-meaning | `endocrine` | Endocrine | Endokrinologisch adaptiert | – | Endokrin | ≠ HL7 DE |  |
| request-priority | `asap` | ASAP | Sehr dringend | Sehr dringend | Baldmöglichst | AT ≠ HL7 DE |  |
| request-priority | `stat` | STAT | Notfall | Notfall | Sofort | AT ≠ HL7 DE |  |

## 2. Änderungen mit PR #3

Diese 13 Übersetzungen hat PR #3 geändert oder ergänzt. Gründe stehen in der Beschreibung von PR #3.

| CodeSystem | Code | vorher | jetzt im FSH | abgestimmt AT | abgestimmt HL7 DE |
|---|---|---|---|---|---|
| condition-clinical | `unknown` | – | Unbekannt | – | Unbekannt |
| device-nametype | `patient-reported-name` | PatientInberichteter Name | Patientenberichteter Name | – | Von Patient:in angegebener Name |
| device-nametype | `other` | Sonstige | Andere | – | – |
| v3-ObservationInterpretation | `N` | Normal | Normal (nicht numerisch) | Normal (nicht numerisch) | Normal |
| v3-ObservationInterpretation | `OBX` | Dolmetscherkennzeichen in separaten OBX Segmenten | Bewertung in separaten OBX-Segmenten | – | – |
| observation-status | `final` | Abgeschlossen | Final | – | – |
| observation-status | `amended` | Geändert | Überarbeitet | – | – |
| observation-status | `cancelled` | Storniert | Abgebrochen | – | – |
| observation-status | `entered-in-error` | Irrtümliche Eingabe | Fehleingabe | – | – |
| observation-status | `unknown` | – | Unbekannt | – | – |
| v2-0203 | `RI` | Identifier der Quelle | Ressourcen-Identifikator | – | – |
| v2-0373 | `ACID` | Aufsäuerung | Ansäuerung | – | – |
| v2-0373 | `RECA` | Rekalkifizierung | Rekalzifizierung | – | – |

## 3. Alle Codes je CodeSystem

### Freigabetyp (`composition-attestation-mode`)

`http://hl7.org/fhir/composition-attestation-mode|4.0.1` · Datei [CodeSystem-composition-attestation-mode-de-de.fsh](../input/fsh/CodeSystem-composition-attestation-mode-de-de.fsh) · 3 fehlt, 1 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `personal` | Personal | – | – | – | fehlt |  |
| `professional` | Professional | – | – | – | fehlt |  |
| `legal` | Legal | Rechtliche Verantwortung | – | – | offen |  |
| `official` | Official | – | – | – | fehlt |  |

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
| `unknown` | Unknown | Unbekannt | – | Unbekannt | gleich | neu in PR #3; in der CSV als `unkown` |

### Diagnosesicherheit (`condition-ver-status`)

`http://terminology.hl7.org/CodeSystem/condition-ver-status|2.0.1` · Datei [CodeSystem-condition-ver-status-de-de.fsh](../input/fsh/CodeSystem-condition-ver-status-de-de.fsh) · 5 gleich, 1 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `unconfirmed` | Unconfirmed | Unbestätigt | Unbestätigt | – | gleich |  |
| `provisional` | Provisional | Vorläufig | Vorläufig | – | gleich |  |
| `differential` | Differential | Differenzial | Differenzial | – | gleich |  |
| `confirmed` | Confirmed | Bestätigt | Bestätigt | – | gleich |  |
| `refuted` | Refuted | Ausgeschlossen | Ausgeschlossen | – | gleich |  |
| `entered-in-error` | Entered in Error | Fehleingabe | – | – | offen |  |

### Begründung Nichtverfügbarkeit (`data-absent-reason`)

`http://terminology.hl7.org/CodeSystem/data-absent-reason|2.0.0` · Datei [CodeSystem-data-absent-reason-de-de.fsh](../input/fsh/CodeSystem-data-absent-reason-de-de.fsh) · 14 offen, 1 gleich

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `unknown` | Unknown | Unbekannt | Unbekannt | – | gleich |  |
| `asked-unknown` | Asked But Unknown | Erfragt, aber unbekannt | – | – | offen |  |
| `temp-unknown` | Temporarily Unknown | Temporär unbekannt | – | – | offen |  |
| `not-asked` | Not Asked | Nicht erfragt | – | – | offen |  |
| `asked-declined` | Asked But Declined | Erfragt, aber abgelehnt | – | – | offen |  |
| `masked` | Masked | Maskiert / vertraulich | – | – | offen |  |
| `not-applicable` | Not Applicable | Nicht anwendbar | – | – | offen |  |
| `unsupported` | Unsupported | Nicht unterstützt | – | – | offen |  |
| `as-text` | As Text | Als Text | – | – | offen |  |
| `error` | Error | Fehler | – | – | offen |  |
| `not-a-number` | Not a Number (NaN) | Keine Zahl | – | – | offen |  |
| `negative-infinity` | Negative Infinity (NINF) | Negativ unendlich | – | – | offen |  |
| `positive-infinity` | Positive Infinity (PINF) | Positiv unendlich | – | – | offen |  |
| `not-performed` | Not Performed | Nicht durchgeführt | – | – | offen |  |
| `not-permitted` | Not Permitted | Nicht erlaubt | – | – | offen |  |

### Art der Bezeichnung des Geräts (`device-nametype`)

`http://hl7.org/fhir/device-nametype|4.0.1` · Datei [CodeSystem-device-nametype-de-de.fsh](../input/fsh/CodeSystem-device-nametype-de-de.fsh) · 4 offen, 2 ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `udi-label-name` | UDI Label name | UDI Kennzeichnungsname | – | – | offen |  |
| `user-friendly-name` | User Friendly name | Benutzerfreundlicher Name | – | Gebräuchlicher Name | ≠ HL7 DE |  |
| `patient-reported-name` | Patient Reported name | Patientenberichteter Name | – | Von Patient:in angegebener Name | ≠ HL7 DE | in PR #3 geändert, vorher „PatientInberichteter Name“; Änderungsvorschlag MIO: „Von Patient/Patientin angegebener Name (AT)“; Anm. 2 |
| `manufacturer-name` | Manufacturer name | Herstellername | – | – | offen |  |
| `model-name` | Model name | Modellname | – | – | offen |  |
| `other` | other | Andere | – | – | offen | in PR #3 geändert, vorher „Sonstige“ |
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

`http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation|4.0.0` · Datei [CodeSystem-observation-interpretation-de-de.fsh](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh) · 33 gleich, 11 AT ≠ HL7 DE, 10 offen, 2 Schreibweise, 1 ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `<` | Off scale low | Messbereich unterschritten | Messbereich unterschritten | Unterhalb der analytischen Grenze | AT ≠ HL7 DE | in der CSV als `kleinerals` |
| `>` | Off scale high | Messbereich überschritten | Messbereich überschritten | Oberhalb der analytischen Grenze | AT ≠ HL7 DE | in der CSV als `größerals` |
| `A` | Abnormal | Auffällig | Auffällig | Abnorm | AT ≠ HL7 DE |  |
| `AA` | Critical abnormal | Kritisch auffällig | Kritisch auffällig | Kritisch abnorm | AT ≠ HL7 DE |  |
| `AC` | Anti-complementary substances present | Vorhandene antikomplementäre Substanzen | – | – | offen | Code ist deprecated |
| `B` | Better | Besser | Besser | Besser | gleich |  |
| `CAR` | Carrier | Träger | Träger | Anlageträger | AT ≠ HL7 DE |  |
| `Carrier` | Carrier | Träger | – | – | offen | Code ist deprecated |
| `D` | Significant change down | Signifikanter Rückgang | Signifikanter Rückgang | Signifikanter Rückgang | gleich |  |
| `DET` | Detected | Nachgewiesen | Nachgewiesen | Nachgewiesen | gleich |  |
| `E` | Equivocal | Uneindeutig | Uneindeutig | Mehrdeutig | AT ≠ HL7 DE |  |
| `EX` | outside threshold | Außerhalb des Schwellenwerts | Außerhalb des Schwellenwerts | Interpretation außerhalb des Grenzwertes | AT ≠ HL7 DE |  |
| `EXP` | Expected | Erwartet | Erwartet | Erwartet | gleich |  |
| `H` | High | Hoch | Hoch | Hoch | gleich |  |
| `H>` | Significantly high | Signifikant hoch | – | – | offen | Code ist deprecated |
| `HH` | Critical high | Kritisch hoch | Kritisch hoch | Kritisch Hoch | Schreibweise |  |
| `HM` | Hold for Medical Review | Zur medizinischen Überprüfung zurückhalten | – | – | offen | Code ist deprecated |
| `HU` | Significantly high | Signifikant hoch | Signifikant hoch | Signifikant hoch | gleich |  |
| `HX` | above high threshold | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Schwellenwerts | Oberhalb des oberen Grenzwertes | AT ≠ HL7 DE |  |
| `I` | Intermediate | Intermediär | Intermediär | Intermediär | gleich |  |
| `IE` | Insufficient evidence | Evidenz unzureichend | Evidenz unzureichend | Evidenz unzureichend | gleich |  |
| `IND` | Indeterminate | Unbestimmbar | Unbestimmbar | Unbestimmbar | gleich |  |
| `L` | Low | Niedrig | Niedrig | Niedrig | gleich |  |
| `L<` | Significantly low | Signifikant niedrig | – | – | offen | Code ist deprecated |
| `LL` | Critical low | Kritisch niedrig | Kritisch niedrig | Kritisch niedrig | gleich |  |
| `LU` | Significantly low | Signifikant niedrig | Signifikant niedrig | Signifikant niedrig | gleich |  |
| `LX` | below low threshold | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Schwellenwerts | Unterhalb des unteren Grenzwertes | AT ≠ HL7 DE |  |
| `MS` | moderately susceptible | Mittlere Empfindlichkeit | – | – | offen | Code ist deprecated |
| `NCL` | No CLSI defined breakpoint | Kein CLSI definierter Grenzwert | Kein CLSI definierter Grenzwert | Kein CLSI definierter Schwellenwert für Empfindlichkeit verfügbar | AT ≠ HL7 DE |  |
| `N` | Normal | Normal (nicht numerisch) | Normal (nicht numerisch) | Normal | AT ≠ HL7 DE | in PR #3 geändert, vorher „Normal“ |
| `ND` | Not detected | Nicht nachgewiesen | Nicht nachgewiesen | Nicht nachgewiesen | gleich |  |
| `NEG` | Negative | Negativ | Negativ | Negativ | gleich |  |
| `NR` | Non-reactive | Nicht reaktiv | Nicht reaktiv | Nicht reaktiv | gleich |  |
| `NS` | Non-susceptible | Nicht empfindlich | Nicht empfindlich | Nicht empfindlich | gleich |  |
| `OBX` | Interpretation qualifiers in separate OBX segments | Bewertung in separaten OBX-Segmenten | – | – | offen | in PR #3 geändert, vorher „Dolmetscherkennzeichen in separaten OBX Segmenten“; Code ist deprecated |
| `ObservationInterpretationDetection` | ObservationInterpretationDetection | Feststellungsinterpretation | – | Feststellungsinterpretation | gleich |  |
| `ObservationInterpretationExpectation` | ObservationInterpretationExpectation | Erwartungsinterpretation | – | Erwartungsinterpretation | gleich |  |
| `POS` | Positive | Positiv | Positiv | Positiv | gleich |  |
| `QCF` | Quality control failure | Versagen der Qualitätskontrolle | – | – | offen | Code ist deprecated |
| `R` | Resistant | Resistent | Resistent | Resistent | gleich |  |
| `RR` | Reactive | Reaktiv | Reaktiv | Reaktiv | gleich |  |
| `ReactivityObservationInterpretation` | ReactivityObservationInterpretation | Reaktivitätsinterpretation | – | Reaktivitätsinterpretation | gleich |  |
| `S` | Susceptible | Empfindlich | Empfindlich | Empfindlich | gleich |  |
| `SDD` | Susceptible-dose dependent | Dosis- / Konzentrationsabhängige Empfindlichkeit | Dosis- / Konzentrationsabhängige Empfindlichkeit | Dosis-/Konzentrationsabhängige Empfindlichkeit | Schreibweise |  |
| `SYN-R` | Synergy - resistant | Resistent gegenüber Substanzkombination | Resistent gegenüber Substanzkombination | Resistent gegenüber Substanzkombination | gleich |  |
| `SYN-S` | Synergy - susceptible | Empfindlich gegenüber Substanzkombination | Empfindlich gegenüber Substanzkombination | Empfindlich gegenüber Substanzkombination | gleich |  |
| `TOX` | Cytotoxic substance present | Zytotoxische Substanz vorhanden | – | – | offen | Code ist deprecated |
| `U` | Significant change up | Signifikanter Anstieg | Signifikanter Anstieg | Signifikanter Anstieg | gleich |  |
| `UNE` | Unexpected | Unerwartet | Unerwartet | Unerwartet | gleich |  |
| `VS` | very susceptible | Sehr empfindlich | – | – | offen | Code ist deprecated |
| `W` | Worse | Schlechter | Schlechter | Schlechter | gleich |  |
| `WR` | Weakly reactive | Schwach reaktiv | Schwach reaktiv | Schwach reaktiv | gleich |  |
| `_GeneticObservationInterpretation` | GeneticObservationInterpretation | Interpretation der genetischen Analyse | – | Interpretation der genetischen Analyse | gleich |  |
| `_ObservationInterpretationChange` | ObservationInterpretationChange | Änderungsverlauf | – | Änderungsverlauf | gleich | Anm. 6 |
| `_ObservationInterpretationExceptions` | ObservationInterpretationExceptions | Ausnahmewertinterpretation | – | Ausnahmewertinterpretation | gleich |  |
| `_ObservationInterpretationNormality` | ObservationInterpretationNormality | Normalitätsinterpretation | – | Normalitätsinterpretation | gleich |  |
| `_ObservationInterpretationSusceptibility` | ObservationInterpretationSusceptibility | Interpretation der antimikrobiellen Resistenztestung | – | Interperation der antimikrobiellen Empfindlichkeit | ≠ HL7 DE | Tippfehler in der CSV: „Interperation“ statt „Interpretation“ |

### Status der Beobachtung (`observation-status`)

`http://hl7.org/fhir/observation-status|4.0.1` · Datei [CodeSystem-observation-status-de-de.fsh](../input/fsh/CodeSystem-observation-status-de-de.fsh) · 8 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `registered` | Registered | Registriert | – | – | offen |  |
| `preliminary` | Preliminary | Vorläufig | – | – | offen |  |
| `final` | Final | Final | – | – | offen | in PR #3 geändert, vorher „Abgeschlossen“ |
| `amended` | Amended | Überarbeitet | – | – | offen | in PR #3 geändert, vorher „Geändert“ |
| `corrected` | Corrected | Korrigiert | – | – | offen |  |
| `cancelled` | Cancelled | Abgebrochen | – | – | offen | in PR #3 geändert, vorher „Storniert“ |
| `entered-in-error` | Entered in Error | Fehleingabe | – | – | offen | in PR #3 geändert, vorher „Irrtümliche Eingabe“ |
| `unknown` | Unknown | Unbekannt | – | – | offen | neu in PR #3 |

### Vergleichsoperator für Mengenangaben (`quantity-comparator`)

`http://hl7.org/fhir/quantity-comparator|4.0.1` · Datei [CodeSystem-quantity-comparator-de-de.fsh](../input/fsh/CodeSystem-quantity-comparator-de-de.fsh) · 4 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `<` | Less than | Kleiner als | – | – | offen |  |
| `<=` | Less or Equal to | Kleiner oder gleich | – | – | offen |  |
| `>=` | Greater or Equal to | Größer oder gleich | – | – | offen |  |
| `>` | Greater than | Größer als | – | – | offen |  |

### Richtgrenzen-Typ (`referencerange-meaning`)

`http://terminology.hl7.org/CodeSystem/referencerange-meaning|1.0.1` · Datei [CodeSystem-referencerange-meaning-de-de.fsh](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh) · 7 gleich, 4 AT ≠ HL7 DE, 2 ≠ HL7 DE

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `type` | Type | Generell | – | Typ | ≠ HL7 DE |  |
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

`http://hl7.org/fhir/specimen-status|4.0.1` · Datei [CodeSystem-specimen-status-de-de.fsh](../input/fsh/CodeSystem-specimen-status-de-de.fsh) · 4 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `available` | Available | Verfügbar | – | – | offen |  |
| `unavailable` | Unavailable | Nicht verfügbar | – | – | offen |  |
| `unsatisfactory` | Unsatisfactory | Nicht geeignet | – | – | offen |  |
| `entered-in-error` | Entered in Error | Fehleingabe | – | – | offen |  |

### Typ des Identifiers (`v2-0203`)

`http://terminology.hl7.org/CodeSystem/v2-0203|5.0.0` · Datei [CodeSystem-v2-0203-de-de.fsh](../input/fsh/CodeSystem-v2-0203-de-de.fsh) · Das Supplement übersetzt 10 von 147 Codes. 10 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `ACSN` | Accession ID | Eingangs-ID | – | – | offen |  |
| `BSNR` | Primary physician office number | Betriebsstättennummer | – | – | offen |  |
| `FILL` | Filler Identifier | Identifikator des Auftragnehmers | – | – | offen |  |
| `LACSN` | Laboratory Accession ID | Laborzugangs-ID | – | – | offen |  |
| `MCN` | Microchip Number | Mikrochip-Nummer | – | – | offen |  |
| `PLAC` | Placer Identifier | Identifikator des Auftraggebers | – | – | offen |  |
| `SID` | Specimen ID | Proben-ID | – | – | offen |  |
| `SNO` | Serial Number | Seriennummer | – | – | offen |  |
| `USID` | Unique Specimen ID | Eindeutige Proben-ID | – | – | offen |  |
| `RI` | Resource identifier | Ressourcen-Identifikator | – | – | offen | in PR #3 geändert, vorher „Identifier der Quelle“ |

### Probenverarbeitungsmethode (`v2-0373`)

`http://terminology.hl7.org/CodeSystem/v2-0373|3.0.0` · Datei [CodeSystem-v2-0373-de-de.fsh](../input/fsh/CodeSystem-v2-0373-de-de.fsh) · 8 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `ACID` | Acidification | Ansäuerung | – | – | offen | in PR #3 geändert, vorher „Aufsäuerung“ |
| `ALK` | Alkalization | Alkalisierung | – | – | offen |  |
| `DEFB` | Defibrination | Defibrinierung | – | – | offen |  |
| `FILT` | Filtration | Filtration | – | – | offen |  |
| `LDLP` | LDL Precipitation | LDL-Ausfällung | – | – | offen |  |
| `NEUT` | Neutralization | Neutralisierung | – | – | offen |  |
| `RECA` | Recalification | Rekalzifizierung | – | – | offen | in PR #3 geändert, vorher „Rekalkifizierung“ |
| `UFIL` | Ultrafiltration | Ultrafiltration | – | – | offen |  |

### Probenzustand (`v2-0493`)

`http://terminology.hl7.org/CodeSystem/v2-0493|3.0.0` · Datei [CodeSystem-v2-0493-de-de.fsh](../input/fsh/CodeSystem-v2-0493-de-de.fsh) · 10 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `AUT` | Autolyzed | Autolysiert | – | – | offen |  |
| `CFU` | Centrifuged | Zentrifugiert | – | – | offen |  |
| `CLOT` | Clotted | Verklumpt | – | – | offen |  |
| `CON` | Contaminated | Kontaminiert | – | – | offen |  |
| `COOL` | Cool | Gekühlt | – | – | offen |  |
| `FROZ` | Frozen | Gefroren | – | – | offen |  |
| `HEM` | Hemolyzed | Hämolysiert | – | – | offen |  |
| `LIVE` | Live | Lebendig | – | – | offen |  |
| `ROOM` | Room temperature | Raumtemperatur | – | – | offen |  |
| `SNR` | Sample not received | Probe nicht erhalten | – | – | offen |  |

### Nüchternstatus (`v2-0916`)

`http://terminology.hl7.org/CodeSystem/v2-0916|3.0.0` · Datei [CodeSystem-v2-0916-de-de.fsh](../input/fsh/CodeSystem-v2-0916-de-de.fsh) · 4 offen

| Code | Englisch | FSH | abgestimmt AT | abgestimmt HL7 DE | Status | Hinweis |
|---|---|---|---|---|---|---|
| `F` | Patient was fasting prior to the procedure. | Nüchtern | – | – | offen |  |
| `FNA` | Fasting not asked of the patient at time of procedure. | Aufforderung zur Nüchternheit nicht erfolgt | – | – | offen |  |
| `NF` | The patient indicated they did not fast prior to the procedure. | Nicht nüchtern | – | – | offen |  |
| `NG` | Not Given - Patient was not asked at the time of the procedure. | Nüchternstatus nicht abgefragt | – | – | offen |  |

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
