# Übersetzungsvorschläge ohne Abstimmung mit HL7 Austria

Stand: 01.10.2026 · Branch `feature/translation-de-de`, Commit `b4f5200`

Die Tabelle enthält alle Codes aus den CodeSystem-Supplements unter `input/fsh/`, für die `HL7 Übersetzungen.xlsx`
keine abgestimmte Übersetzung enthält. Die Zuordnung zum XLSX erfolgte über die Code-System-OID,
siehe [Abgleich-Uebersetzungen-XLSX.md](Abgleich-Uebersetzungen-XLSX.md).

Die Spalte *Übersetzungsvorschlag* ist die deutsche Bezeichnung (`^designation.value`, `de-DE`) aus der FSH-Datei.

93 Codes. Für 27 davon steht in der Spalte *Hinweis* ein eigener Vorschlag mit Begründung:
24 Übersetzungen aus dem FSH sollten geändert werden, 3 Codes haben im FSH keine Übersetzung.

Geprüft wurde jede Übersetzung gegen

- die Definition des Codes im englischen CodeSystem,
- die im XLSX abgestimmte Terminologie, z. B. „Fehleingabe“ für `entered-in-error`, und
- Rechtschreibung und Schreibweise im XLSX (Großschreibung am Anfang, Doppelformen bei Personen).

| CodeSystem (Version) | Code | Englischer Display | Übersetzungsvorschlag | Hinweis |
|---|---|---|---|---|
| composition-attestation-mode (4.0.1) | `personal` | Personal | *(keine Übersetzung im FSH)* | Vorschlag: „Persönlich“. Bestätigung in persönlicher Eigenschaft. |
| composition-attestation-mode (4.0.1) | `professional` | Professional | *(keine Übersetzung im FSH)* | Vorschlag: „Beruflich“. Bestätigung in beruflicher Eigenschaft. |
| composition-attestation-mode (4.0.1) | `legal` | Legal | Rechtliche Verantwortung |  |
| composition-attestation-mode (4.0.1) | `official` | Official | *(keine Übersetzung im FSH)* | Vorschlag: „Offiziell“. Die Organisation bestätigt, dass der Inhalt ihren Richtlinien und Verfahren entspricht. |
| condition-ver-status (2.0.1) | `entered-in-error` | Entered in Error | Fehleingabe |  |
| data-absent-reason (2.0.0) | `asked-unknown` | Asked But Unknown | Erfragt, aber unbekannt |  |
| data-absent-reason (2.0.0) | `temp-unknown` | Temporarily Unknown | Aktuell unbekannt |  |
| data-absent-reason (2.0.0) | `not-asked` | Not Asked | Nicht erfragt |  |
| data-absent-reason (2.0.0) | `asked-declined` | Asked But Declined | Erfragt, aber abgelehnt |  |
| data-absent-reason (2.0.0) | `masked` | Masked | Maskiert / vertraulich |  |
| data-absent-reason (2.0.0) | `not-applicable` | Not Applicable | Nicht anwendbar |  |
| data-absent-reason (2.0.0) | `unsupported` | Unsupported | Nicht unterstützt |  |
| data-absent-reason (2.0.0) | `as-text` | As Text | Als Text |  |
| data-absent-reason (2.0.0) | `error` | Error | Fehler |  |
| data-absent-reason (2.0.0) | `not-a-number` | Not a Number (NaN) | Keine Zahl | Vorschlag: „Keine Zahl (NaN)“. „Keine Zahl“ allein liest sich wie „keine Angabe“. Die Abkürzung steht auch im englischen Display. |
| data-absent-reason (2.0.0) | `negative-infinity` | Negative Infinity (NINF) | Negativ unendlich |  |
| data-absent-reason (2.0.0) | `positive-infinity` | Positive Infinity (PINF) | Positiv unendlich |  |
| data-absent-reason (2.0.0) | `not-performed` | Not Performed | Nicht durchgeführt |  |
| data-absent-reason (2.0.0) | `not-permitted` | Not Permitted | Nicht erlaubt |  |
| device-nametype (4.0.1) | `udi-label-name` | UDI Label name | UDI Kennzeichnungsname | Vorschlag: „UDI-Kennzeichnungsname“. Bindestrich bei Zusammensetzung mit Abkürzung. |
| device-nametype (4.0.1) | `user-friendly-name` | User Friendly name | Benutzerfreundlicher Name |  |
| device-nametype (4.0.1) | `patient-reported-name` | Patient Reported name | PatientInberichteter Name | Vorschlag: „Von Patient / Patientin angegebener Name“. Tippfehler im FSH. Doppelform wie im XLSX, z. B. „Autor / Autorin“. |
| device-nametype (4.0.1) | `manufacturer-name` | Manufacturer name | Herstellername |  |
| device-nametype (4.0.1) | `model-name` | Model name | Modellname |  |
| device-nametype (4.0.1) | `other` | other | Sonstige | Vorschlag: „Andere“. Im XLSX abgestimmt für `OTH` (NullFlavor) und `other` (AdministrativeGender, de-DE): „Andere“. |
| v3-ObservationInterpretation (4.0.0) | `AC` | Anti-complementary substances present | Vorhandene antikomplementäre Substanzen | Vorschlag: „Antikomplementäre Substanzen vorhanden“. Satzbau wie bei `TOX` („Zytotoxische Substanz vorhanden“). Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `Carrier` | Carrier | Träger | Wie abgestimmt für `CAR`. Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `H>` | Significantly high | Signifikant hoch | Entspricht `HU`, dort abgestimmt „Signifikant hoch“. Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `HM` | Hold for Medical Review | Zur medizinischen Überprüfung zurückhalten | Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `L<` | Significantly low | Signifikant niedrig | Entspricht `LU`, dort abgestimmt „Signifikant niedrig“. Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `MS` | moderately susceptible | Mittlere Empfindlichkeit | Vorschlag: „Mäßig empfindlich“. Parallel zu `VS` „Sehr empfindlich“ und abgestimmt `S` „Empfindlich“, `NS` „Nicht empfindlich“. Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `OBX` | Interpretation qualifiers in separate OBX segments | Dolmetscherkennzeichen in separaten OBX Segmenten | Vorschlag: „Interpretationskennzeichen in separaten OBX-Segmenten“. „Interpretation qualifiers“ sind Interpretationskennzeichen, keine Dolmetscher. Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `ObservationInterpretationDetection` | ObservationInterpretationDetection | Feststellungsinterpretation | Vorschlag: „Nachweisinterpretation“. Es geht um An- oder Abwesenheit eines Analyten. Untergeordnete Codes sind abgestimmt als „Nachgewiesen“ / „Nicht nachgewiesen“. |
| v3-ObservationInterpretation (4.0.0) | `ObservationInterpretationExpectation` | ObservationInterpretationExpectation | Erwartungsinterpretation |  |
| v3-ObservationInterpretation (4.0.0) | `QCF` | Quality control failure | Versagen der Qualitätskontrolle | Vorschlag: „Qualitätskontrolle fehlgeschlagen“. Üblichere Formulierung. Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `ReactivityObservationInterpretation` | ReactivityObservationInterpretation | Reaktivitätsinterpretation |  |
| v3-ObservationInterpretation (4.0.0) | `TOX` | Cytotoxic substance present | Zytotoxische Substanz vorhanden | Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `VS` | very susceptible | Sehr empfindlich | Code ist deprecated. |
| v3-ObservationInterpretation (4.0.0) | `_GeneticObservationInterpretation` | GeneticObservationInterpretation | Interpretation der genetischen Analyse |  |
| v3-ObservationInterpretation (4.0.0) | `_ObservationInterpretationChange` | ObservationInterpretationChange | Änderungsverlauf | Vorschlag: „Interpretation der Veränderung“. „Änderungsverlauf“ bedeutet Historie. Gemeint ist die Einordnung einer Veränderung (abgestimmt: „Besser“, „Schlechter“, „Signifikanter Anstieg“, „Signifikanter Rückgang“). |
| v3-ObservationInterpretation (4.0.0) | `_ObservationInterpretationExceptions` | ObservationInterpretationExceptions | Ausnahmewertinterpretation |  |
| v3-ObservationInterpretation (4.0.0) | `_ObservationInterpretationNormality` | ObservationInterpretationNormality | Normalitätsinterpretation |  |
| v3-ObservationInterpretation (4.0.0) | `_ObservationInterpretationSusceptibility` | ObservationInterpretationSusceptibility | Interpretation der antimikrobiellen Resistenztestung |  |
| observation-status (4.0.1) | `registered` | Registered | Registriert |  |
| observation-status (4.0.1) | `preliminary` | Preliminary | Vorläufig |  |
| observation-status (4.0.1) | `final` | Final | Abgeschlossen | Vorschlag: „Final“. Im XLSX abgestimmt für `final` in DiagnosticReportStatus und CompositionStatus. „Abgeschlossen“ ist im XLSX für `completed` vergeben (MedicationRequestStatus, MedicationStatusCodes). |
| observation-status (4.0.1) | `amended` | Amended | Geändert | Vorschlag: „Überarbeitet“. Im XLSX abgestimmt für `amended` in DiagnosticReportStatus und CompositionStatus. |
| observation-status (4.0.1) | `corrected` | Corrected | Korrigiert |  |
| observation-status (4.0.1) | `cancelled` | Cancelled | Storniert | Vorschlag: „Abgebrochen“. Laut Definition nicht begonnen oder nicht abgeschlossen („aborted“). Im XLSX abgestimmt für `cancelled` in DiagnosticReportStatus. |
| observation-status (4.0.1) | `entered-in-error` | Entered in Error | Irrtümliche Eingabe | Vorschlag: „Fehleingabe“. Im XLSX durchgängig „Fehleingabe“ abgestimmt. |
| quantity-comparator (5.0.0) | `<` | Less than | Kleiner | Vorschlag: „Kleiner als“. Eindeutiger, parallel zu „Kleiner oder gleich“. |
| quantity-comparator (5.0.0) | `<=` | Less or Equal to | Kleiner oder gleich |  |
| quantity-comparator (5.0.0) | `>=` | Greater or Equal to | Größer oder gleich |  |
| quantity-comparator (5.0.0) | `>` | Greater than | Größer | Vorschlag: „Größer als“. Eindeutiger, parallel zu „Größer oder gleich“. |
| quantity-comparator (5.0.0) | `ad` | Sufficient to achieve this total quantity | Auffüllen auf |  |
| referencerange-meaning (1.0.1) | `type` | Type | Generell | Vorschlag: „Allgemeiner Typ“. Gruppierungscode („General types of reference range“). „Generell“ allein sagt nicht, was gemeint ist. |
| referencerange-meaning (1.0.1) | `endocrine` | Endocrine | Endokrinologisch adaptiert |  |
| specimen-status (4.0.1) | `available` | Available | Verfügbar |  |
| specimen-status (4.0.1) | `unavailable` | Unavailable | Nicht verfügbar |  |
| specimen-status (4.0.1) | `unsatisfactory` | Unsatisfactory | Nicht geeignet |  |
| specimen-status (4.0.1) | `entered-in-error` | Entered in Error | Irrtümliche Eingabe | Vorschlag: „Fehleingabe“. Im XLSX durchgängig „Fehleingabe“ abgestimmt. |
| v2-0203 (5.0.0) | `ACSN` | Accession ID | Eingangs-ID |  |
| v2-0203 (5.0.0) | `BSNR` | Primary physician office number | Betriebsstättennummer |  |
| v2-0203 (5.0.0) | `FILL` | Filler Identifier | Identifikator des Auftragnehmers |  |
| v2-0203 (5.0.0) | `LACSN` | Laboratory Accession ID | Laborzugangs-ID | Vorschlag: „Laboreingangs-ID“. „Zugang“ lässt sich als Zugriff lesen. Einheitlich mit `ACSN` „Eingangs-ID“. |
| v2-0203 (5.0.0) | `MCN` | Microchip Number | Mikrochip-Nummer |  |
| v2-0203 (5.0.0) | `PLAC` | Placer Identifier | Identifikator des Auftraggebers |  |
| v2-0203 (5.0.0) | `SID` | Specimen ID | Proben-ID |  |
| v2-0203 (5.0.0) | `SNO` | Serial Number | Seriennummer |  |
| v2-0203 (5.0.0) | `USID` | Unique Specimen ID | Eindeutige Proben-ID |  |
| v2-0203 (5.0.0) | `RI` | Resource identifier | Identifier der Quelle | Vorschlag: „Ressourcen-Identifikator“. „Resource“ heißt Ressource, nicht Quelle. „Identifikator“ wie bei `FILL` und `PLAC`. |
| v2-0373 (3.0.0) | `ACID` | Acidification | Aufsäuerung | Vorschlag: „Ansäuerung“. Fachbegriff ist „Ansäuerung“. |
| v2-0373 (3.0.0) | `ALK` | Alkalization | Alkalisierung |  |
| v2-0373 (3.0.0) | `DEFB` | Defibrination | Defibrinierung |  |
| v2-0373 (3.0.0) | `FILT` | Filtration | Filtration |  |
| v2-0373 (3.0.0) | `LDLP` | LDL Precipitation | LDL-Ausfällung |  |
| v2-0373 (3.0.0) | `NEUT` | Neutralization | Neutralisierung |  |
| v2-0373 (3.0.0) | `RECA` | Recalification | Rekalkifizierung | Vorschlag: „Rekalzifizierung“. Übliche Schreibweise (vgl. Rekalzifizierungszeit). |
| v2-0373 (3.0.0) | `UFIL` | Ultrafiltration | Ultrafiltration |  |
| v2-0493 (3.0.0) | `AUT` | Autolyzed | Autolysiert |  |
| v2-0493 (3.0.0) | `CFU` | Centrifuged | Zentrifugiert |  |
| v2-0493 (3.0.0) | `CLOT` | Clotted | Verklumpt | Vorschlag: „Geronnen“. Fachbegriff für geronnene Blutproben. |
| v2-0493 (3.0.0) | `CON` | Contaminated | Kontaminiert |  |
| v2-0493 (3.0.0) | `COOL` | Cool | Gekühlt |  |
| v2-0493 (3.0.0) | `FROZ` | Frozen | Gefroren |  |
| v2-0493 (3.0.0) | `HEM` | Hemolyzed | Hämolysiert |  |
| v2-0493 (3.0.0) | `LIVE` | Live | Lebendig | Vorschlag: „Lebend“. Üblicher bei Proben (Lebendprobe). |
| v2-0493 (3.0.0) | `ROOM` | Room temperature | Raumtemperatur |  |
| v2-0493 (3.0.0) | `SNR` | Sample not received | Probe nicht erhalten |  |
| v2-0916 (3.0.0) | `F` | Patient was fasting prior to the procedure. | Nüchtern |  |
| v2-0916 (3.0.0) | `FNA` | Fasting not asked of the patient at time of procedure. | Aufforderung zur Nüchternheit nicht erfolgt |  |
| v2-0916 (3.0.0) | `NF` | The patient indicated they did not fast prior to the procedure. | Nicht nüchtern |  |
| v2-0916 (3.0.0) | `NG` | Not Given - Patient was not asked at the time of the procedure. | Nüchternstatus nicht abgefragt |  |

Der englische Display stammt aus der Version des CodeSystems, die das Supplement in `^supplements` angibt:

- `hl7.fhir.r4.core#4.0.1`: composition-attestation-mode, device-nametype, observation-status, specimen-status
- `hl7.terminology#7.4.0`: condition-ver-status, data-absent-reason, v3-ObservationInterpretation, referencerange-meaning, v2-0203, v2-0373, v2-0493, v2-0916
- `hl7.fhir.r5.core#5.0.0`: quantity-comparator
