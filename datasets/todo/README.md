# Pending datasets

This directory contains configuration files for datasets that cannot
be uploaded because some functionality is missing in
[TriplyDB](https://triplydb.com) and/or
[TriplyDB.js](https://triply.cc/docs/triply-client-js).

## File name extension order

The following datasets cannot be uploaded because they do not have the
RDF file name extension (`.nt`) at the anticipated location (i.e., at
the end or directly before the file compression/archive format):

  - [Code List for Cultural Heritage
    Organizations](loc_organizations.json) local name
    `vocabularyorganizations.nt.skos.zip`.
  - [ISO 639-1: Codes for the Representation of Names of Languages ―
    Part 1: Two-letter codes for languages](loc_iso639-1.json) local
    name `vocabularyiso639-1.nt.skos.zip`.
  - [ISO 639-2: Codes for the Representation of Names of Languages -
    Part 2: Alpha-3 Code for the Names of
    Languages](loc_iso639-2.json) local name
    `vocabularyiso639-2.nt.skos.zip`.
  - [Library of Congress Subject Headings](lcsh.json) local name
    `authoritiessubjects.nt.skos.zip`
  - [MARC List for Languages](loc_languages.json) local name
    `vocabularylanguages.nt.skos.zip`.

## Unsupported licenses

The following datasets contain licenses that are not yet supported.

License <https://unlicense.org>:

  - [Data.gouv.fr (DGFR) ontology](dgfr.json)

License <https://www.gnu.org/licenses/lgpl-3.0.html>:

  - [LKIF Core Ontology](lkif@1.0.3.json)
  - [LKIF Core Ontology](lkif@1.1.json)

License <https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/>:

  - [50K Gazetteer Linked Data](gazetteer.json)
  - [Bounary Line Linked Data](boundary-line.json)
  - [Code-Point Open Linked Data](codepoint.json)

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

## Unclear why no RDF was extracted

Investigate why no RDF can be extracted from the following, seemingly
correct, URLs:

  - [HistoGraph](hg.json) bug [#4878](https://issues.triply.cc/issues/4878).

## Only the most recent data is made available

The following datasets only publish the most recent versions that go
offline again after some time.  This requires an archiving approach
that we do not yet have.

  - [EPO](epo.json)
