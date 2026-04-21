// =======================================================
// Logical Model: XShareCarePlanModel (R4-safe, SUSHI-friendly)
// =======================================================

Logical: XShareCarePlanModel
Id: Careplan-logical
Title: "Care Plan (Logical Model)"
Description: "Logical model representing a draft Care Plan structure, including ownership, goals, evidence, and activities with outcomes."
* ^status = #draft
* ^experimental = true

// ---------- Core metadata ----------
* title 0..1 string "Title" "Human-friendly title of the care plan."
* description 0..1 markdown "Description" "Narrative description of the care plan."
* status 0..1 code "Status" "Workflow/lifecycle status of the care plan."
* category 0..* CodeableConcept "Category" "Categorization of the care plan (e.g., rehab, chronic care, oncology)."
* period 0..1 Period "Period" "Time period the care plan covers."
* author[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Author" "Person or organization responsible for creating the care plan."

* careTeam 0..* BackboneElement "Care team / organization in charge" "CareTeam or responsible organization having charge of the plan."
* careTeam.member[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Care team member" "References to practitioners, organizations, or related persons involved in the care plan."

// ---------- Subject / clinical context ----------
* subject 1..1 EHDSPatient "Subject" "The patient who is the subject of this care plan."

* reason 0..* EHDSCondition "Reason (problem/health concern)" "Problems/health concerns prompting the care plan."


* supportingInfo 0..* Reference(Resource) "Evidence / supporting information" "Evidence or other supporting information used as basis for this care plan."

* goal 0..* BackboneElement "Goal" "Goals defined for the care plan. Treatment goals defined by the care team and not always visible to the patient Treatment goals. Patient goals goals expressed by the patient and visible to the patient."

* goal.category 0..1 CodeableConcept "Goal category" "Categorization of the goal (e.g., Treatment goals, Patient goals)."
* goal.description 1..1 string "Goal description" "Description of the goal."
* goal.target 0..1 CodeableConcept "Goal target" "Target of the goal."
* goal.due 0..1 date "Goal due date" "Date by which the goal achievment status took effect (I.e. When achieved, when improving, etc.)."


// ---------- Goals ----------
/* * treatmentGoal 0..* CodeableConcept "Treatment goals" "Goals defined by the care team; not always visible to the patient."

* patientGoal 0..* CodeableConcept "Patient goals" "Goals expressed by the patient; visible to the patient." */


// ---------- Activities ----------
* activity 0..* BackboneElement "Activity" "Planned or performed activities as part of the care plan."

* activity.workflowStatus 0..1 code "Workflow status" "Workflow status of the activity (e.g., planned, in-progress, completed, stopped)."
* activity.narrative 0..1 markdown "Narrative" "Human-readable narrative describing the activity."

* activity.structured 0..1 Reference(Resource) "Reference to formal artifact" "Reference to a formal request/performance (e.g., ServiceRequest, Procedure, Task)."

* activity.outcome 0..* BackboneElement "Outcome" "Outcome(s) captured for the activity."
* activity.outcome.summary 0..1 string "Outcome summary" "Short textual summary of the outcome."
* activity.outcome.evidence 0..* Reference(Resource) "Outcome evidence" "References to observations/documents or other evidence supporting the outcome."
