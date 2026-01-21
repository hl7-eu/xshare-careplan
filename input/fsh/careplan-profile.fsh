// =======================================================
// Profile: xShare CarePlan (R4)
// =======================================================

Profile: XShareCarePlan
Parent: CarePlan
Id: xshare-careplan
Title: "xShare Care Plan"
Description: "CarePlan profile aligned with the Care Plan logical model."
* ^status = #draft
* ^experimental = true

// ---------- Core metadata ----------
* title ^short = "Care Plan Title"
* description ^short = "Description of the care plan"
* status ^short = "Status of the care plan"
* category ^short = "Kind of plan"
* period ^short = "Time period covered by the plan"
* created ^short = "Date the plan was created"
* author ^short = "Who the plan is attributed to"
* careTeam ^short = "Participants in the care plan"

// ---------- Subject / clinical context ----------
* subject 1..1
* subject only Reference(PatientEuCore)
* addresses 0..*
* addresses only Reference(ConditionEuCore)
* supportingInfo ^short = "Information considered as part of the care plan"

// ---------- Goals ----------

* goal ^short = "Desired outcomes"

// Add slices for patient and treatment goal ?

// ---------- Activities ----------
* activity 0..*

* activity.reference 0..1
* activity.reference ^short = "Activity details defined in specific resource."
* activity.progress ^short = "Notes about the progress of the activity"

* activity.outcomeCodeableConcept ^short = "Codeable Outcome summary"
* activity.outcomeReference ^short = "Outcome evidence"

* activity.detail  ^short = "Removed for R5/R6 alignment"


