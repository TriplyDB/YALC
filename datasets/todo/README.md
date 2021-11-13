# Pending datasets

This directory contains configuration files for datasets that cannot
be uploaded because some functionality is missing in
[TriplyDB](https://triplydb.com) and/or
[TriplyDB.js](https://triply.cc/docs/triply-client-js).

## FTP support

The following datasets cannot be uploaded because they are published
on an FTP server:

  - [ChEMBL](chembl@27.0.json)

## File name extension order

The following datasets cannot be uploaded because they do not have one
of the supported/recognized RDF file name extensions at the
anticipated location (i.e., at the end or directly before the file
compression/archive format):

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

## Relative IRIs containing a forward slash and a colon

The following datasets are not yet supported because they contain
relative IRIs with a forward slash and a colon
(<https://github.com/rdfjs/rdfxml-streaming-parser.js/issues/45>):

  - [European Pollutant Release and Transfer Register
    (E-PRTR)](e-prtr.json)

## Unsupported licenses

The following licenses are not yet supported:

  - <http://publications.europa.eu/resource/authority/licence/COM_REUSE>
  - <https://unlicense.org>
  - <https://www.gnu.org/licenses/lgpl-3.0.html>
  - <https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/>

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
