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
* Outcomes and evidence associated with those activities

The logical model is intentionally close to the business and application views described elsewhere in this guide. It separates the care planning concepts from the technical representation so that the model can be reviewed independently from a specific FHIR profile.

### Conceptual Model (key data)

Conceptually, a Care Plan is a structured coordination object. It connects the patient, the responsible care team, the clinical context, the agreed goals, and the activities that should be performed or have already been performed.

The model supports both professional and patient-facing use cases:

* Health care professionals can define, update and monitor a plan.
* Patients and authorised participants can view the plan and record execution of assigned actions.
* Organisations can monitor care delivery and outcomes across care plans.

This conceptual view is refined into the logical model described below.

  <div>

    <figure>
      <p></p> <img width="40%" alt="CarePlan Key Data" src="keydata.png"/>    
     <figcaption>Fig. 1: Care Plan Key Data</figcaption>
    </figure>
  </div>

### Logical Model

The [Care Plan logical model](StructureDefinition-Careplan-logical.html) defines the source information structure used by this guide. It represents a Care Plan with metadata, care team participation, subject and clinical context, goals, supporting information, planned or performed activities, and activity outcomes.

The main logical groups are:

* **Core metadata:** `title`, `description`, `status`, `category`, `period` and `author[x]`.
* **Care team:** `careTeam` and `careTeam.member[x]`, representing the professionals or organisations involved in the plan.
* **Subject and clinical context:** `subject`, `reason` and `supportingInfo`.
* **Goals:** `goal`, with category, description, target and due date.
* **Activities:** `activity`, including workflow status, narrative description, structured references and outcomes.

The logical model is currently marked as draft and experimental. Implementers should treat it as a working model intended to support review and alignment, not as a frozen semantic specification.

### Implementable Specification

The implementable representation is the [xShare Care Plan profile](StructureDefinition-xshare-careplan.html), a profile on the FHIR `CarePlan` resource.

The profile is aligned with FHIR R4. Some Care Plan activity details are represented through referenced resources rather than through `CarePlan.activity.detail`, supporting forward alignment with later FHIR versions where the CarePlan activity structure changes.

### Mapping

The [Care Plan mapping page](map-careplan.html) describes how each logical model element is expressed in the implementable FHIR representation.


### Content Artefacts

The primary content artefacts in this guide are:

| Artefact | Purpose |
| --- | --- |
| [Care Plan logical model](StructureDefinition-Careplan-logical.html) | Defines the source information model for the Care Plan domain. |
| [xShare Care Plan profile](StructureDefinition-xshare-careplan.html) | Defines the implementable FHIR `CarePlan` representation. |
| [Care Plan mapping](map-careplan.html) | Explains how logical model elements map to FHIR resources and elements. |

