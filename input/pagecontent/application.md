The **application domain** summarises the application-level interactions that can support future European adoption of structured Care Plans.

<div>
<p> </p>
{% include bdat-a.svg %}
<p> </p>
</div>

<div class="model-map-block">
  <div class="callout-wrapper">
    <div class="callout-box">
      <strong>Scope of this version:</strong>
      This version of the guide focuses on the content specification for Care Plans. It defines the logical model, the implementable FHIR profile and the mapping between them. Detailed exchange transitions, workflow orchestration, security patterns, API interactions and deployment architecture are outside the scope of this version and may be added in future versions. The interaction diagrams below are provided as illustrative examples for patient and health care professional applications.
    </div>
  </div>
</div>

### Application Participants

The application view involves two primary user-facing applications: a patient-facing app and a health care professional app. Both interact with an EHR system that may also support health information exchange or order management capabilities.

<div>
<p> </p>
{% include app-actors.svg %}
<p> </p>
</div>

The patient app supports access to the care plan and recording of patient-executed actions. The health care professional app supports patient identification, care plan creation, action recording, monitoring and updates. In both cases, the EHR system is the system of record for the exchanged Care Plan information.

### Care Plan Actions Sequence

The following sequences describe possible application interactions around Care Plan access and update. They are not intended to define mandatory API choreography in this version of the guide; they show how the content specification can be used in typical application flows.

#### Patient App Actions Sequence

The patient sequence starts with authentication and identification of the patient and application context. The patient then searches for and retrieves the Care Plan from the EHR system. After viewing the plan, the patient may execute an assigned action and record the result in the patient app. The action record is then sent back to the EHR system so that the plan status, activity record or related outcome information can be updated where appropriate.

<div>
<p> </p>
{% include seq-pat-actions.svg %}
<p> </p>
</div>

#### HCP App Actions Sequence

The health care professional sequence includes authentication, patient identification, care plan creation, action execution and monitoring. The HCP app may retrieve patient health data to support care plan definition or review, publish a new or updated Care Plan, record executed actions, and consult order or activity status when monitoring progress.

<div>
<p> </p>
{% include seq-hcp-actions.svg %}
<p> </p>
</div>

The diagrams assume that exchanged Care Plan content follows the data model and FHIR profile described in the [content](content.html) and [technical](technical.html) sections of this guide.

