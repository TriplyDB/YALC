# Pending datasets

This directory contains configuration files for datasets that cannot
be uploaded because some functionality is still missing in
[TriplyDB](https://triplydb.com) and/or [Triply
Client](https://triply.cc/docs/triply-client-js).

## Upload jobs with multiple URLs

The following datasets require support for upload jobs with multiple
URLs:

  - [DBpedia](dbpedia.json)

## Base IRI

The following datasets require a base IRI to be set during upload:

  - [RDDL](rddl.json)

## Unrecognized file name extension

The following datasets require support for additional RDF-denoting
file name extensions:

  - CIDOC-CRM has file name extension `rdfs`
  - HealthCare Ontology has file name extension `xrdf`
  - [MetaVocab](metavocab.json) has file name extension `rdfs`
  - [RDDL](rddl.json) has file name extension `rdfs`

## Empty Bzipped file

The following datasets require support for empty Bzipped files:

  - [LinkedGeoData](LinkedGeoData.json)
