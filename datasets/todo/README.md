# Pending datasets

This directory contains configuration files for datasets that cannot
be uploaded because some functionality is still missing in
[TriplyDB](https://triplydb.com) and/or [Triply
Client](https://triply.cc/docs/triply-client-js).

## File name extension `.skos`

  - [Code List for Cultural Heritage Organizations](loc_organizations.json)
  - [ISO 639-1: Codes for the Representation of Names of Languages ― Part 1: Two-letter codes for languages](loc_iso639-1.json)
  - [ISO 639-2: Codes for the Representation of Names of Languages - Part 2: Alpha-3 Code for the Names of Languages](loc_iso639-2.json)
  - [Library of Congress Subject Headings](lcsh.json)
  - [MARC List for Languages](loc_languages.json)

## Empty Bzipped file

The following datasets require support for empty Bzipped files:

  - [LinkedGeoData](LinkedGeoData.json)

## Unsupported licenses

<https://www.gnu.org/licenses/lgpl-3.0.html>

  - [LKIF Core Ontology](lkif@1.0.3.json)
  - [LKIF Core Ontology](lkif@1.1.json)

## macOS archives

The following datasets are published in an archive format that was
created on macOS.  On macOS it is common practice to implicitly
include additional files into archives, for which the upload feature
currently fails.

  - [DOLCE Lite](dolce-lite@3.9.7.json)
  - [LKIF Core Ontology](lkif@1.0.3.json)

## JSON-LD uploads

The following datasets cannot be uploaded because JSON-LD is not yet
supported:

  - [Web Annotation Data Model](anno.json)
  - [Entity Facts](entity-facts.json)

## Only the most recent data is made available

The following datasets only publish the most recent versions that go
offline again after some time.  This requires an archiving approach
that we do not yet have.

  - [EPO](epo.json)
