// =======================================================
// Logical Model: XShareCarePlanModel (R4-safe, SUSHI-friendly)
// =======================================================

Logical: XShareCarePlanModel
Parent: EHDSCarePlan
Id: XShareCarePlan
Title: "Care Plan (Logical Model)"
Description: "Logical model representing a Care Plan structure with metadata, care team participation, subject and clinical context, goals, supporting information, planned or performed activities, and activity outcomes."


// DErive from EHDS care plan model

// ---------- Core metadata ----------
/* * newTitle 0..1 string "Title" "Human-friendly title of the care plan." */
* realize[x] 0..* uri or Reference "Instantiated Guideline" "Identifier or reference to the guidelines that this care plan realizes."
/* * newDescription 0..1 markdown "Description" "Narrative description of the care plan." */
/* * status 1..1 code "Status" "Workflow/lifecycle status of the care plan." */
* category 0..* CodeableConcept "Category" "Categorization of the care plan (e.g., rehab, chronic care, oncology)."
/* * newPeriod 0..1 Period "Period" "Time period the care plan covers." */
/* * author[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Author" "Person or organization responsible for creating the care plan." */

// Add device in the author

* careTeam 0..* Base "Care team / organization in charge" "Care team or responsible organization in charge of the plan."
* careTeam.member[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Care team member" "References to practitioners, organizations, or related persons involved in the care plan."

// ---------- Subject / clinical context ----------
/* * subject 1..1 EHDSPatient "Subject" "The patient who is the subject of this care plan." */

/* * reason 0..* EHDSCondition "Reason (problem/health concern)" "Problems/health concerns prompting the care plan." */


* supportingInfo 0..* Reference "Evidence / supporting information" "Evidence or other supporting information used as the basis for this care plan."

// ---------- Goals ----------
* goalDetails 0..* Base "Goal" "Goals defined for the care plan, including treatment goals defined by the care team and patient goals expressed by the patient."

* goalDetails.category 0..1 CodeableConcept "Category (e.g., treatment, patient goal)" "Categorization of the goal (e.g., treatment goal, patient goal)."
/* * goalDetails.description 1..1 string "Goal description" "Description of the goal." */
* goalDetails.target 0..* Base "Goal target" "Target of the goal."
* goalDetails.due 0..1 date "Goal due date" "Date by which the goal should be met or reviewed."

// * activityCodeableConcept 0..0

* activity[x] only Reference


// ---------- Activities ----------
* detailsActivity 0..* Base "Activity" "Planned or performed activities as part of the care plan."

* detailsActivity.workflowStatus 0..1 code "Workflow status" "Workflow status of the activity (e.g., planned, in-progress, completed, stopped)."
* detailsActivity.narrative 0..1 markdown "Narrative" "Human-readable narrative describing the activity."

/* * pluto.structured 0..1 Reference(Resource) "Reference to formal artifact" "Reference to a formal request/performance (e.g., ServiceRequest, Procedure, Task)." */

* detailsActivity.progress 0..* Annotation "Outcome, Progresses" "Outcome(s) or progresses captured for the activity."
* detailsActivity.performed 0..* Reference "Performed activity" "References to the performed activities."