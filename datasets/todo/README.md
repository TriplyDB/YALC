# Pending datasets

This directory contains configuration files for datasets that cannot
be uploaded because some functionality is still missing in
[TriplyDB](https://triplydb.com) and/or [Triply
Client](https://triply.cc/docs/triply-client-js).

## File name extension `.skos`

  - [LoC Languages](loc-languages.json)
  - [LoC ISO 639-1](loc-iso639-1.json)
  - [LoC ISO 639-2](loc-iso639-2.json)
  - [LoC Organizations](loc-organizations.json)
  - [LoC Subjects](loc-subjects.json)

## File name extension `.rdfs`

  - [CIDOC-CRM](crm.json)
  - [RDDL](rddl.json)

## Empty Bzipped file

The following datasets require support for empty Bzipped files:

  - [LinkedGeoData](LinkedGeoData.json)

## JSON-LD uploads

The following datasets cannot be uploaded because JSON-LD is not yet
supported:

  - [Entity Facts](entity-facts.json)

## Bug in RDF/XML parser

The following datasets cannot be uploaded because of bugs in the
RDF/XML parser:

  - [EARL](earl.json)
