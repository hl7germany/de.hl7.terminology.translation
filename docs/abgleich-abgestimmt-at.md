# Abgleich der de-DE-Übersetzungen mit `HL7 Übersetzungen.xlsx`

Stand: 06.10.2026 · geprüfter FSH-Stand: nach PR #1 und PR #2

`HL7 Übersetzungen.xlsx` enthält die mit HL7 Austria abgestimmten Übersetzungen und ist hier die Referenz.
Geprüft wurde, ob die deutschen Bezeichnungen (`^designation.value`) in den CodeSystem-Supplements unter
`input/fsh/` davon abweichen.

## Ergebnis

80 Codes kommen sowohl in den FSH-Dateien als auch im XLSX vor. Alle 80 stimmen wörtlich überein.

Bis PR #2 wich `N` in v3-ObservationInterpretation ab: Im FSH stand „Normal“, abgestimmt AT ist „Normal (nicht numerisch)“.
Die englische Bezeichnung im XLSX (Spalte *Description*) lautet „Normal (applies to non-numeric results)“. Mit PR #2 ist
das FSH angeglichen, siehe [CodeSystem-observation-interpretation-de-de.fsh:187](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh#L187).

## Zuordnung ValueSet → CodeSystem

Das XLSX hat ein Sheet pro ValueSet. Die FSH-Dateien sind Supplements zu CodeSystems. Für den Vergleich wurde jede
XLSX-Zeile über ihre Spalte *Code System ID* (OID) einem CodeSystem zugeordnet. Die OIDs wurden über
`CodeSystem.identifier` in `hl7.fhir.r4.core#4.0.1` und `hl7.terminology.r4#7.4.0` aufgelöst.

| XLSX-Sheet | ValueSet | Code System ID | CodeSystem (FSH-Supplement) | Codes verglichen | davon abweichend |
|---|---|---|---|---:|---:|
| ConditionClinicalStatusCodes | `http://hl7.org/fhir/ValueSet/condition-clinical` | `2.16.840.1.113883.4.642.4.1074` | [`http://terminology.hl7.org/CodeSystem/condition-clinical`](../input/fsh/CodeSystem-condition-clinical-de-de.fsh) | 6 | 0 |
| DiagnosticReportStatus | `http://hl7.org/fhir/ValueSet/diagnostic-report-status` | `2.16.840.1.113883.4.642.4.236` | [`http://hl7.org/fhir/diagnostic-report-status`](../input/fsh/CodeSystem-diagnostic-report-status-de-de.fsh) | 10 | 0 |
| eHDSICertainty | `http://terminology.ehdsi.eu/ValueSet/eHDSICertainty` | `2.16.840.1.113883.4.642.4.1075` | [`http://terminology.hl7.org/CodeSystem/condition-ver-status`](../input/fsh/CodeSystem-condition-ver-status-de-de.fsh) | 5 | 0 |
| eHDSIObservationInterpretation | `http://terminology.ehdsi.eu/ValueSet/eHDSIObservationInterpretation` | `2.16.840.1.113883.5.83` | [`http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation`](../input/fsh/CodeSystem-observation-interpretation-de-de.fsh) | 39 | 0 |
| eHDSIPerformerFunction | `http://terminology.ehdsi.eu/ValueSet/eHDSIPerformerFunction` | `2.16.840.1.113883.5.90` | [`http://terminology.hl7.org/CodeSystem/v3-ParticipationType`](../input/fsh/CodeSystem-v3-participationtype-de-de.fsh) | 1 | 0 |
| eHDSIReferenceRangeAppliesTo | `http://terminology.ehdsi.eu/ValueSet/eHDSIReferenceRangeAppliesTo` | `2.16.840.1.113883.4.642.4.2038` | [`http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use`](../input/fsh/CodeSystem-sex-parameter-for-clinical-use-de-de.fsh) | 2 | 0 |
| eHDSIReferenceRangeMeaning | `http://terminology.ehdsi.eu/ValueSet/eHDSIReferenceRangeMeaning` | `2.16.840.1.113883.4.642.4.1124` | [`http://terminology.hl7.org/CodeSystem/referencerange-meaning`](../input/fsh/CodeSystem-referencerange-meaning-de-de.fsh) | 11 | 0 |
| RequestPriority | `http://hl7.org/fhir/ValueSet/request-priority` | `2.16.840.1.113883.4.642.4.116` | [`http://hl7.org/fhir/request-priority`](../input/fsh/CodeSystem-request-priority-de-de.fsh) | 4 | 0 |
| SexParameterForClinicalUse | `http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use` | `2.16.840.1.113883.4.642.4.2038` | [`http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use`](../input/fsh/CodeSystem-sex-parameter-for-clinical-use-de-de.fsh) | 3 | 0 |
| SexParameterForClinicalUse | `http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use` | `2.16.840.1.113883.4.642.4.1048` | [`http://terminology.hl7.org/CodeSystem/data-absent-reason`](../input/fsh/CodeSystem-data-absent-reason-de-de.fsh) | 1 | 0 |

Hinweise zur Auflösung:

- Das ValueSet `SexParameterForClinicalUse` enthält Codes aus zwei CodeSystems. `female-typical`, `male-typical` und
  `specified` gehören zu sex-parameter-for-clinical-use, `unknown` gehört zu data-absent-reason.
- Die Sheets `SexParameterForClinicalUse` und `eHDSIReferenceRangeAppliesTo` übersetzen `female-typical` und
  `male-typical` gleich. Deshalb sind es 80 verschiedene Codes in 82 XLSX-Zeilen.
- Das Sheet `eHDSIAllergyCertainty` hat dieselben Codes wie condition-ver-status (`unconfirmed`, `confirmed`, `refuted`).
  Die Codes gehören aber zum CodeSystem allergyintolerance-verification (`2.16.840.1.113883.4.642.4.1371`) und wurden
  deshalb nicht mit dem condition-ver-status-Supplement verglichen.

## Vergleichsregeln

- Verglichen wurden nur Codes, die in beiden Quellen vorkommen. Dass das Paket nur einen Teil des XLSX abdeckt, ist so
  erwartet und wurde nicht als Abweichung gewertet.
- Codes, die nur in den FSH-Dateien vorkommen, wurden ebenfalls nicht gewertet. Das betrifft 91 Codes. 55 davon liegen in neun
  Supplements, zu denen das XLSX gar keine Zeilen hat: composition-attestation-mode, device-nametype, observation-status,
  quantity-comparator, specimen-status, v2-0203, v2-0373, v2-0493 und v2-0916.
- Als deutsche Übersetzung im XLSX gilt die erste Sprachspalte (Spalte E). Die verglichenen Sheets haben keine getrennte
  Spalte für de-DE und de-AT.
- Der Vergleich ist wörtlich, Groß- und Kleinschreibung zählen. Leerzeichen am Anfang und Ende einer Zelle wurden vorher
  entfernt. Das betrifft `SexParameterForClinicalUse` E10–E12 und `eHDSIReferenceRangeAppliesTo` E10–E11.
