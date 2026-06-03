// =======================================================
// Example: xShare Care Plan
// =======================================================

Instance: careplan-xshare-example
InstanceOf: CarePlanXShare
Title: "xShare Care Plan example"
Description: "Example instance for the xShare Care Plan profile."
Usage: #example
* identifier.system = "http://example.org/careplans"
* identifier.value = "CP-2026-001"
* status = #active
* intent = #plan
* title = "Post-discharge diabetes care plan"
* description = "Care plan for follow-up after discharge, including diabetes monitoring and patient education."
* category = $sct#734163000 "Care plan"
* subject = Reference(careplan-xshare-patient-example)
* period.start = "2026-05-01"
* period.end = "2026-08-31"
* created = "2026-05-01"
* author = Reference(careplan-xshare-organization-example)
* careTeam = Reference(careplan-xshare-careteam-example)
* addresses = Reference(careplan-xshare-condition-example)
* goal = Reference(careplan-xshare-goal-example)
* activity[0].reference = Reference(careplan-xshare-servicerequest-example)
* activity[0].progress.text = "Initial education session scheduled and glucose monitoring plan reviewed."
* activity[0].outcomeCodeableConcept = $sct#385669000 "Successful"

Instance: careplan-xshare-patient-example
InstanceOf: PatientEuCore
Title: "xShare Care Plan example patient"
Description: "Patient referenced by the xShare Care Plan example."
Usage: #example
* identifier.system = "http://example.org/patients"
* identifier.value = "PAT-001"
* name.family = "Rossi"
* name.given = "Maria"
* gender = #female
* birthDate = "1975-04-12"

Instance: careplan-xshare-condition-example
InstanceOf: ConditionEuCore
Title: "xShare Care Plan example condition"
Description: "Condition addressed by the xShare Care Plan example."
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = $sct#44054006 "Diabetes mellitus type 2"
* subject = Reference(careplan-xshare-patient-example)
* recordedDate = "2026-04-25"

Instance: careplan-xshare-goal-example
InstanceOf: GoalXShare
Title: "xShare Care Plan example goal"
Description: "Goal referenced by the xShare Care Plan example."
Usage: #example
* lifecycleStatus = #active
* category = $sct#409073007 "Education"
* description = $sct#735985000 "Diabetes self management plan"
* subject = Reference(careplan-xshare-patient-example)
* target.measure = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* target.detailQuantity.value = 7
* target.detailQuantity.unit = "%"
* target.detailQuantity.system = "http://unitsofmeasure.org"
* target.detailQuantity.code = #%
* target.dueDate = "2026-08-31"

Instance: careplan-xshare-servicerequest-example
InstanceOf: ServiceRequest
Title: "xShare Care Plan example activity"
Description: "Planned activity referenced by the xShare Care Plan example."
Usage: #example
* status = #active
* intent = #plan
* code = $sct#710824005 "Assessment of health and social care needs"
* subject = Reference(careplan-xshare-patient-example)
* occurrenceDateTime = "2026-05-15"
* requester = Reference(careplan-xshare-organization-example)

Instance: careplan-xshare-careteam-example
InstanceOf: CareTeam
Title: "xShare Care Plan example care team"
Description: "Care team referenced by the xShare Care Plan example."
Usage: #example
* status = #active
* name = "Diabetes follow-up care team"
* subject = Reference(careplan-xshare-patient-example)
* participant.member = Reference(careplan-xshare-organization-example)

Instance: careplan-xshare-organization-example
InstanceOf: Organization
Title: "xShare Care Plan example organization"
Description: "Organization referenced by the xShare Care Plan example."
Usage: #example
* name = "Example Community Health Centre"
