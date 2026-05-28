The **technical** domain describes how the Care Plan content defined by this guide can be realised in an exchange implementation.

<div class="model-map-block">
    <div class="callout-wrapper">
    <div class="callout-box">
        <strong>Scope of this version:</strong>
            This version of the guide focuses on the content specification for Care Plans. It defines the logical model, the implementable FHIR profile and the mapping between them. Detailed exchange transitions, workflow orchestration, security patterns, API interactions and deployment architecture are outside the scope of this version and may be added in future versions.
    </div>
    </div>
</div>

<div>
<p> </p>
{% include bdat-t.svg %}
<p> </p>
</div>

### Exchange Assumption

This version assumes that Care Plan exchange could be realised by following the [xShare Yellow Button approach](https://xshare-project.eu/the-xshare-button/). In that approach, health data are made available to the person in a harmonised, structured and coded format and can be shared through a user-driven action.

For the Care Plan domain, this means that the technical exchange can be interpreted as the transfer of a computable Care Plan package conforming to the content specifications in this guide. The exact transition model, such as download, one-time sharing, linked access, consent handling, authorisation and recipient responsibilities, is not specified here.

Future versions of this guide may add more detail about those transitions and the technical responsibilities of the systems participating in Care Plan exchange.

### Content Realisation

The technical realisation of the Care Plan content starts from the [Care Plan logical model](StructureDefinition-XShareCarePlan.html). The logical model identifies the information that needs to be exchanged, independently of a specific resource representation.

The logical model can be realised by applying the [Care Plan model-to-profile mapping](map-careplan.html). The mapping explains how each logical element is represented in FHIR, either directly in the CarePlan resource or through referenced FHIR resources.

At a high level:

* Care Plan metadata is represented in `CarePlan.title`, `CarePlan.description`, `CarePlan.status`, `CarePlan.category`, `CarePlan.period` and `CarePlan.author`.
* The patient is represented in `CarePlan.subject`.
* Problems or health concerns are represented through `CarePlan.addresses`.
* Supporting evidence is represented through `CarePlan.supportingInfo`.
* Care team participation is represented through `CarePlan.careTeam` and the referenced `CareTeam` resource.
* Goals are represented through `CarePlan.goal` and the referenced `Goal` resource.
* Activities are represented through `CarePlan.activity`, especially `CarePlan.activity.reference`, with activity details carried by the referenced request, task, appointment or procedure resource.
* Activity outcomes are represented through `CarePlan.activity.outcomeCodeableConcept` and `CarePlan.activity.outcomeReference`.

This approach keeps the CarePlan resource as the coordination point while allowing specialised resources to carry the detailed clinical or workflow information.

### FHIR Profiles And Resources Used

The primary implementable artefact defined by this guide is the [xShare Care Plan profile](StructureDefinition-xshare-careplan.html), a profile on the FHIR R4 `CarePlan` resource.

The profile currently uses or refers to the following FHIR resources and profiles:

| Resource or profile | Use in this guide |
| --- | --- |
| [xShare Care Plan](StructureDefinition-xshare-careplan.html) | Main implementable profile for the Care Plan exchange object. |
| `CarePlan` | Base FHIR resource used as the coordination resource for the plan. |
| `PatientEuCore` | Target profile for `CarePlan.subject`. |
| `ConditionEuCore` | Target profile for `CarePlan.addresses`, representing problems or health concerns addressed by the plan. |
| `CareTeam` | Referenced from `CarePlan.careTeam` to represent participants involved in the plan. |
| `Goal` | Referenced from `CarePlan.goal` to represent treatment goals and patient goals. |
| `ServiceRequest`, `Task`, `Appointment`, `Procedure` or other activity resources | Potential targets of `CarePlan.activity.reference`, depending on the type of planned or performed activity. |
| `Observation`, `DocumentReference` or other evidence resources | Potential targets for supporting information or outcome evidence. |

The logical model also refers to EHDS model types such as `EHDSPatient`, `EHDSCondition`, `EHDSHealthProfessional` and `EHDSOrganisation`. These support alignment with the EHDS logical models while the implementable profile expresses the exchange using FHIR R4 resources and profiles.

### Implementation Considerations

Implementers should use the model-to-profile mapping as the bridge between the logical Care Plan concepts and the exchanged FHIR resources.

When creating or consuming a Care Plan instance:

* Validate the main resource against the xShare Care Plan profile.
* Include or make resolvable the referenced patient, condition, care team, goal, activity and evidence resources needed to interpret the plan.
* Preserve the relationship between goals, activities and outcomes so that the plan remains clinically meaningful after exchange.
* Treat workflow transitions and sharing mechanics as implementation-specific unless and until future versions of this guide define them in detail.

