# Pending datasets

This directory contains configuration files for datasets that cannot
be uploaded because some functionality is still missing in
[TriplyDB](https://triplydb.com) and/or [Triply
Client](https://triply.cc/docs/triply-client-js).

## File name extension `.rdfs`

  - [CIDOC-CRM](crm.json) emits not `Content-Type` header, but does
    have file name extension `.rdfs`.
  - [RDDL](rddl.json) emits `test/plain` i.o. `application/rdf+xml`,
    but does have file name extension `rdfs`.

## Empty Bzipped file

The following datasets require support for empty Bzipped files:

  - [LinkedGeoData](LinkedGeoData.json)

## Bug in RDF/XML parser

The following datasets cannot be uploaded because of bugs in the
RDF/XML parser:

  - [EARL](earl.json)
