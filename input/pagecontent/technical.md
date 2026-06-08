The **technical** domain describes how the Care Plan content defined by this guide can be realised in an exchange implementation.

<div class="model-map-block">
    <div class="callout-wrapper">
    <div class="callout-box">
        <strong>Scope of this version:</strong>
            <p>This version of the guide focuses on the content specification for Care Plans.</p>
            <p>It defines the logical model, the implementable HL7 FHIR profile and the mapping between them.</p>
            <p>Detailed exchange transitions, workflow orchestration, security patterns, API interactions and deployment architecture are outside the scope of this version, and when included, are provided only for informative purposes.</p>
    </div>
    </div>
</div>

<div>
<p> </p>
{% include bdat-t.svg %}
<p> </p>
</div>

### Exchange Assumption

A Care plan can be exchange via different infrastructures, including the **xShare Yellow Button**  [xShare Yellow Button approach](https://xshare-project.eu/the-xshare-button/). 
In that approach, health data are made available to the person in a harmonised, structured and coded format and can be shared through a user-driven action.

For the Care Plan domain, this means that the technical exchange can be interpreted as the transfer of a computable Care Plan package conforming to the content specifications in this guide. The exact transition model, such as download, one-time sharing, linked access, consent handling, authorisation and recipient responsibilities, is not specified here.

Future versions of this guide may add more detail about those transitions and the technical responsibilities of the systems participating in Care Plan exchange.

### Content Realisation

The technical realisation of the Care Plan content starts from the [Care Plan logical model](StructureDefinition-CarePlanXShare.html). The logical model identifies the information that needs to be exchanged, independently of a specific resource representation.

The primary implementable artefact defined by this guide is the [xShare Care Plan profile](StructureDefinition-xshare-careplan.html), a profile on the FHIR R4 `CarePlan` resource.


### Implementation Considerations

Implementers should use the model-to-profile mapping as the bridge between the logical Care Plan concepts and the exchanged HL7 FHIR resources.

When creating or consuming a Care Plan instance:

* Validate the main resource against the xShare Care Plan profile.
* Include or make resolvable the referenced patient, condition, care team, goal, activity and evidence resources needed to interpret the plan.
* Preserve the relationship between goals, activities and outcomes so that the plan remains clinically meaningful after exchange.