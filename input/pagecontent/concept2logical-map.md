The **data domain** describes the Care Plan data model and the FHIR content specifications used to exchange it.

<div>
<p> </p>
{% include bdat-d.svg %}
<p> </p>
</div>

This page provides an overview of how the key conceptual elements shown in Figure 1 are represented in the Care Plan logical model.

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img width="40%" alt="Care Plan key data" src="keydata.png"/>
    <figcaption>Fig. 1: Care Plan conceptual key data</figcaption>
  </figure>
</div>

Figure 2 shows how patient information from the conceptual view is represented in the logical model. The patient is carried through the inherited header subject element, identifying the person whose intended care is described by the plan.

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img width="60%" alt="Patient information mapped to the logical model" src="concept2logical-1.png"/>
    <figcaption>Fig. 2: Patient information mapped to the logical model</figcaption>
  </figure>
</div>

Figure 3 focuses on the condition or health concern addressed by the care plan. In the logical model, this clinical context is represented by the `addresses[x]` element, which can identify the problems, concerns, diagnoses, or conditions managed by the plan.

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img width="60%" alt="Condition addressed by the care plan mapped to the logical model" src="concept2logical-2.png"/>
    <figcaption>Fig. 3: Condition addressed by the Care Plan</figcaption>
  </figure>
</div>

Figure 4 shows how goals are refined in the logical model. A conceptual goal is represented with a description, category, target, due date, and outcome information so that treatment goals and patient-expressed goals can be described consistently.

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img width="70%" alt="Care Plan goal information mapped to the logical model" src="concept2logical-3.png"/>
    <figcaption>Fig. 4: Goal information mapped to the logical model</figcaption>
  </figure>
</div>

Figure 5 describes how planned or performed activities are represented. The logical model separates the activity grouping from the coded or referenced activity details, workflow status, human-readable description, progress notes, and references to performed activity evidence.

<div style="margin-top: 2rem; margin-bottom: 3rem;">
  <figure>
    <p></p>
    <img width="60%" alt="Care Plan activity information mapped to the logical model" src="concept2logical-4.png"/>
    <figcaption>Fig. 5: Activity details and execution information in the logical model</figcaption>
  </figure>
</div>
