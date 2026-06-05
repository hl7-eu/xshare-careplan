// =======================================================
// Logical Model: CarePlanXShareModel (R4-safe, SUSHI-friendly)
// =======================================================

Logical: CarePlanXShareModel
Parent: EHDSDataSet
Id: CarePlanXShare
Title: "Care Plan (Logical Model)"
Description: """Logical model representing a Care Plan structure with metadata, care team participation, subject and clinical context, goals, supporting information, planned or performed activities, and activity outcomes.
This model extends the EHDSCarePlan model with additional elements to capture care team participation, clinical context, and activity and goal details, while maintaining logical compatibility with the original EHDSCarePlan structure."""

* header.identifier 
  * ^short = "Identifier for the care plan"
  * ^definition = "Identifier for the care plan"
* header.subject 
  * ^short = "The patient whose intended care is described in the plan."
  * ^definition = "The patient whose intended care is described in the plan."
* header.author[x]
  * ^short = "The responsible party (custodian) for the care plan."
  * ^definition = "The responsible party (custodian) for the care plan."
* header.status 
  * ^short = "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record."
  * ^definition = "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record."
  * ^binding.description = "HL7 Request status"
  * ^binding.strength = #preferred
* title 0..1 string "Human-friendly name for the care plan"
* description 0..1 string "A description of the scope and nature of the plan."
* period 0..1 Period "Indicates when the plan did (or is intended to) come into effect and end."

// ADDED
* realize[x] 0..* uri or Reference "Instantiated Guideline" "Identifier or reference to the guidelines that this care plan realizes."
* category 0..* CodeableConcept "Category" "Categorization of the care plan (e.g., rehab, chronic care, oncology)."
* careTeam 0..* Base "Care team / organization in charge" "Care team or responsible organization in charge of the plan."
* careTeam.member[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Care team member" "References to practitioners, organizations, or related persons involved in the care plan."
//----

* addresses[x] 0..* CodeableConcept or EHDSCondition "Conditions/problems/concerns/diagnoses/etc whose management and/or mitigation are handled by this plan."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred

// MODIFIED
* activity 0..* Base "Activity" "Planned or performed activities as part of the care plan."
  // this is the EHDSCarePlan original activity[x] element
  * activityCodeableConcept 0..* CodeableConcept "The details of the proposed activity represented in a specific resource."
  * activityReference 0..* Reference "The details of the proposed activity represented in a specific resource."
  // ----
  * workflowStatus 0..1 code "Workflow status" "Workflow status of the activity (e.g., planned, in-progress, completed, stopped)."
  * description 0..1 markdown "Description" "Human-readable description of the activity."
  * progress 0..* Annotation "Outcome, Progresses" "Outcome(s) or progresses captured for the activity."
  * performed 0..* Reference "Performed activity" "References to the performed activities."

// MODIFIED
* goal 0..* Base "Goal" "Goals defined for the care plan, including treatment goals defined by the care team and patient goals expressed by the patient."
  // this is the EHDSCarePlan original goal element
  * description 0..* CodeableConcept "Describes the intended objective(s) of carrying out the care plan."
  // ---
  * category 0..1 CodeableConcept "Category (e.g., treatment, patient goal)" "Categorization of the goal (e.g., treatment goal, patient goal)."
  * target 0..* Base "Goal target" "Target of the goal."
  * due 0..1 date "Goal due date" "Date by which the goal should be met or reviewed."
  * outcome 0..* EHDSObservation "Goal outcome" "Outcome of the goal, which can be represented as a codeable concept or a reference to an observation or other resource capturing the outcome."
  
// ADDED
* supportingInfo 0..* Reference "Evidence / supporting information" "Evidence or other supporting information used as the basis for this care plan."

