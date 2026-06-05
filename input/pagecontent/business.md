
The **business domain** describes the overall context and business use cases that make use of the Care Plan.

<div>
{% include bdat-b.svg %}
</div>

### The context

The European Health Data Space (EHDS) represents a transformative step toward a unified European framework for the primary and secondary use of electronic health data. By establishing common rules, standards and infrastructures for cross-border data exchange, EHDS aims to improve continuity of care, strengthen patient rights, enhance healthcare quality and enable innovation across Member States.

A central instrument for achieving interoperability within EHDS is the European Electronic Health Record Exchange Format (EHRxF). The EHRxF defines priority categories of electronic health data to be exchanged across borders under Article 5 and Annex I of the EHDS Regulation. These categories include patient summaries, ePrescriptions, laboratory results, medical imaging reports and discharge reports.

However, while these categories cover essential clinical documentation, they do not explicitly address structured, longitudinal and coordinated care planning as a distinct Health Information Domain (HID). Care Plans, which organise goals, interventions, responsibilities and follow-up across time and care settings, are fundamental to modern healthcare delivery, particularly in the management of chronic conditions and complex multimorbidity.

Across Europe, healthcare systems are increasingly characterised by:

* A growing burden of chronic diseases
* Multidisciplinary and cross-sectoral care pathways
* Greater emphasis on outcome-based and value-based care
* Stronger patient involvement and shared decision-making

These developments require care coordination mechanisms that are structured, interoperable and capable of computational support. Narrative or locally defined care planning approaches are insufficient to support cross-border exchange, systematic quality measurement or digital decision support.

Within the xShare project, the ambition is to expand and operationalise the European EHRxF to support effective and meaningful exchange of health data in the EHDS context. As part of this work, xShare propose a new Health Information Domain (HID) for Care Plans.

The core conceptual position of this deliverable is that:

A Care Plan HID should be defined as a structured, standardised, guideline-informed, machine-readable and interoperable model for coordinated patient care.

This implies that Care Plans are not merely narrative documents, but structured and semantically defined constructs capable of supporting:

* Coordinated care across providers and sectors
* Transparent linkage to evidence-based clinical guidance
* Rule-based, machine readable and verifiable decision support
* Cross-border continuity of care
* Secondary use for research, monitoring and quality improvement

### Business Use Cases

#### Actors

The business actors involved in the Care Plan domain are the patient, health care professionals, caregivers, relatives and the health care provider organisation. Within the professional role, clinicians and nurses are modelled as specialised health care professionals, reflecting that some responsibilities are shared while others, such as defining the care plan, are more role-specific.

<div>
<p> </p>
{% include bus-actors.svg %}
<p> </p>
</div>

#### Patient

The patient is positioned as an active participant in the care plan lifecycle. According to the diagram, the patient can search for and view the care plan, share it when needed, and execute and record assigned actions. Viewing is treated as a common included capability that supports the broader search-and-see interaction.

<div>
<p> </p>
{% include pat-use-cases.svg %}
<p> </p>
</div>

#### Health Care Professional

Health care professionals interact with the care plan both operationally and clinically. The shared professional role can search for and view the plan, share it, execute and record actions, and manage ongoing care plan execution; management includes viewing, updating and monitoring outcomes. The clinician role adds the specific responsibility of defining the care plan, while nurses participate through the broader professional capabilities.

<div>
<p> </p>
{% include hcp-use-cases.svg %}
<p> </p>
</div>

#### Caregiver

Caregivers support day-to-day execution of the care plan. The diagram shows that they can search for and view the care plan, share it with authorised participants, execute and record actions, and monitor outcomes, which positions them as an important bridge between planned care and actual care delivery in daily life.

<div>
<p> </p>
{% include caregiver-use-cases.svg %}
<p> </p>
</div>

#### Relatives

Relatives have a more limited but still relevant role. They can search for and view the care plan and execute and record actions, which suggests involvement in practical support activities while leaving plan management and broader coordination responsibilities to formal care actors.

<div>
<p> </p>
{% include rel-use-cases.svg %}
<p> </p>
</div>

#### Organization

The health care provider organisation has an oversight-oriented role in the business view. It is shown as able to search for and view care plans and to monitor outcomes, supporting organisational supervision, service coordination and assessment of whether care activities are progressing as intended.

<div>
<p> </p>
{% include org-use-cases.svg %}
<p> </p>
</div>
