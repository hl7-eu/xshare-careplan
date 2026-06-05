This page explains how to start using this guide to share **structured Care Plan** content by using the [**Yellow Button**](https://hl7.eu/fhir/ig/xshare-yb/).


### Why Care Plans ?

Healthcare systems are increasingly characterised by:

* A growing burden of chronic diseases
* Multidisciplinary and cross-sectoral care pathways
* Greater emphasis on outcome-based and value-based care
* Stronger patient involvement and shared decision-making

These developments require **care coordination mechanisms** that are **structured, interoperable and capable of computational support**.


### What You Should Be Able to Do

Create, validate, exchange or consume a computable Care Plan package based on the xShare Care Plan content model defined by this guide by using the sharing capabilities specified in the xShare Yellow Button HL7 FHIR Implemenation Guide, see:
* getting started with the [Yellow Button Download](https://hl7.eu/fhir/ig/xshare-yb/get-started-down.html)
* getting started with the [Yellow Button One-time Share](https://hl7.eu/fhir/ig/xshare-yb/get-started-share.html)


### How to implement the Care Plan content specification

Acting as xShare Yellow Button Content Creator and xShare Yellow Button Content Consumer for Care Plan, implementers have to be able to create or consume Care Plans conformant to the profiles specified in this guide.

The sharing of the set of resources defining the Care Plan by using the Yellow Button dowanload and one-time share capabilities should be made grouping them into a Bundle of type collection.


### Declare and Prove Your Conformance

#### Claim Your Conformance

To claim conformance with the xShare Yellow Button Download, implementers must issue a [conformance statement](https://hl7.eu/fhir/ig/xshare-yb/conf-statement.html) specifying the content specifications and the optional features supported (e.g. additional download formats, password protected content, psuedoanonymized data;...).


#### Prove Your Conformance

To prove conformance to the *xShare Yellow Button Download* as [*xShare Yellow Button Provider*](https://hl7.eu/fhir/ig/xshare-yb/ActorDefinition-actorDefinition-yb-provider.html) you must:

1. Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button Download feature.
1. Claim that user autentication is realized in conformance with the European Regulations
1. Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to download.
1. Pass validation tests for the Care Plan specification.
1. Ensure that the download content is available in the selected target format.

---

To prove conformance to the *xShare Yellow Button One-time* as [*xShare Yellow Button Provider*](https://hl7.eu/fhir/ig/xshare-yb/ActorDefinition-actorDefinition-yb-provider.html) you must:

1. Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button One-time Share feature.
1. Claim that user autentication is realized in conformance with the European Regulations
1. Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to share.
1. Demonstrate that a valid Smart Health Link is generated.
1. Ensure that content authorised for sharing (the SHL Manifest) is available in the selected target format when the authorised data recipient accesses the Smart Health Link.
1. The SHL Manifest passes the validation tests for the xShare Care Plan.

---

To prove conformance to the *xShare Yellow Button Download* as [*xShare Yellow Button Consumer*](https://hl7.eu/fhir/ig/xshare-yb/ActorDefinition-actorDefinition-yb-consumer.html) you must:

1. Demonstrate that is able to 'consume' (e.g. display, import,...) the Care Plan content.

---

To prove conformance to the *xShare Yellow Button One-time* as [*xShare Yellow Button Consumer*](https://hl7.eu/fhir/ig/xshare-yb/ActorDefinition-actorDefinition-yb-consumer.html) you must:

1. Ensure that is able to process a valid Smart Health Link.
1. Demonstrate that can accesses the content authorised for sharing (the SHL Manifest), available in the selected target format.
1. Show that is able to 'consume' (e.g. display, import,...) the xShare Care Plan.
