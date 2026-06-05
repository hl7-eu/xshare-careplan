The **data domain** describes the Care Plan data model and the FHIR content specifications used to exchange it.

<div>
<p> </p>
{% include bdat-d.svg %}
<p> </p>
</div>

This page brings together the conceptual, logical and implementable content artefacts defined by this guide. It explains how the Care Plan is structured at the information-model level and how that structure is represented using HL7 FHIR.

### Care Plan Content Overview

The Care Plan content model is organised around the information needed to coordinate care over time:

* Metadata that identifies and classifies the care plan
* The patient who is the subject of the plan
* The author and care team responsible for the plan
* Clinical reasons, problems or health concerns addressed by the plan
* Supporting evidence and contextual information
* Goals, including treatment goals and patient-expressed goals
* Planned or performed activities
* Progress, outcomes and evidence associated with activities and goals

The logical model is intentionally close to the business and application views described elsewhere in this guide. It separates care planning concepts from the technical FHIR representation so that the information model can be reviewed independently from a specific implementation profile.

### Conceptual Model

Conceptually, a Care Plan is a structured coordination object. It connects the patient, the responsible care team, the clinical context, the agreed goals, and the activities that should be performed or have already been performed.

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img width="40%" alt="Care Plan conceptual key data" src="keydata.png"/>
    <figcaption>Fig. 1: Care Plan conceptual key data</figcaption>
  </figure>
</div>

The model supports professional, patient-facing and organisational use cases:

* Health care professionals can define, update and monitor a plan.
* Patients and authorised participants can search, access, view and share the plan, and can record execution of assigned actions.
* Organisations can monitor care delivery and outcomes across care plans.

The conceptual view is refined into the logical model described below. The [Conceptual to Logical Model Mapping](concept2logical-map.html) page provides a focused view of how selected conceptual elements, such as patient information, addressed conditions, goals and activities, are represented in the logical model.

### Logical Model

The [Care Plan logical model](StructureDefinition-CarePlanXShare.html) defined by this guide refines the Care Plan conceptual model and is based on `EHDSDataSet`. It represents the care plan as an information structure with header metadata, patient context, care team participation, addressed conditions, goals, supporting information, planned or performed activities, and activity or goal outcomes.

The model adds care-plan-specific structure by:

* Expanding the **goal** structure with description, category, target, due date and outcome information
* Expanding the **activity** structure with coded or referenced activity details, workflow status, description, progress and performed activity references
* Including references to instantiated guidelines or definitions
* Adding care team and care team member details
* Adding evidence or other supporting information used as the basis for the care plan

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img height="500px" alt="Care Plan logical model overview" src="logical.png"/>
    <figcaption>Fig. 2: Care Plan logical model overview</figcaption>
  </figure>
</div>

This is a first proposal for review and further refinement. Implementers should treat it as a working model intended to support alignment, not as a frozen semantic specification.

### Logical to HL7 FHIR Profile Mapping

An element-by-element forward mapping has been specified between the Care Plan logical model and the associated HL7 FHIR profiles. Details are provided in the [Logical to HL7 FHIR Profile model map](map-careplan.html) page.

### Implementable Specification

The implementable representation uses the [xShare Care Plan profile](StructureDefinition-careplan-xshare.html), a profile on the FHIR R4 `CarePlan` resource. Goals referenced by the Care Plan are represented using the [xShare Goal profile](StructureDefinition-goal-xshare.html), a profile on the FHIR R4 `Goal` resource.

The Care Plan profile keeps `CarePlan` as the coordination resource. Some activity details are represented through referenced resources rather than through `CarePlan.activity.detail`, which is constrained out to support alignment with later FHIR versions where the CarePlan activity structure changes.

### Content Artefacts

The primary content artefacts in this guide are:

| Artefact | Purpose |
| --- | --- |
| [Conceptual to Logical Model Mapping](concept2logical-map.html) | Shows how selected Care Plan conceptual elements are represented in the logical model. |
| [Care Plan logical model](StructureDefinition-CarePlanXShare.html) | Defines the source information model for the Care Plan domain. |
| [xShare Care Plan profile](StructureDefinition-careplan-xshare.html) | Defines the implementable FHIR `CarePlan` representation. |
| [xShare Goal profile](StructureDefinition-goal-xshare.html) | Defines the implementable FHIR `Goal` representation used for care plan goals. |
| [Logical to HL7 FHIR Profile model map](map-careplan.html) | Explains how logical model elements map to FHIR resources and elements. |
