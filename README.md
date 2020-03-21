# LOD Cloud

Welcome to the Triply LOD Cloud registry!

This registry contains records for the Linked Open Datasets that are
included in TriplyDB (https://triplydb.com).

You can include a new Linked Open Dataset by creating a [pull
request](https://github.com/TriplyDB/LOD-Cloud/pulls).  You can also
open an [issue](https://github.com/TriplyDB/LOD-Cloud/issues) using
the dataset request template.

## Repository structure

This repository is structured in the following directories:

<dl>
  <dt><code>/dataset</code></dt>
  <dd>Contains one configuration file for each Linked Open Dataset.</dd>
  <dt><code>/img</code></dt>
  <dd>Contains images that are used in dataset and organization configurations.</dd>
  <dt><code>/organization</code></dt>
  <dd>Contains one configuration file for each organization.</dd>
</dl>

## Configuration format

This repository describes the configuration format that is used to
describe Linked Open Datasets.

### Dataset configuration format

One dataset configuration file describes exactly one Linked Open
Dataset.  The file name `DATASET.json` corresponds with the
`"DATASET"` value of the `sdo:identifier` key in the JSON content.

The value of the `sdo:image` key is the name of an image file in the
`/img` directory.

The value of the `organization` key is `"ORGANIZATION"`, which
corresponds to the file name `ORGANIZATION.json` in the
`/organization` directory (see below).

The snippet below shows the JSON contents for the Linked Open Dataset
that is described in file `owl.json`.  Notice that the value for key
`sdo:identifier` is `"owl"`, and that the value for key `organization`
is `"w3c"`.

```json
{
  "@type": "void:Dataset",
  "dct:description": "This ontology partially describes the built-in classes and properties that together form the basis of the RDF/XML syntax of OWL 2.  The content of this ontology is based on Tables 6.1 and 6.2 in Section 6.4 of the OWL 2 RDF-Based Semantics specification, available at <http://www.w3.org/TR/owl2-rdf-based-semantics/>.\nPlease note that those tables do not include the different annotations (labels, comments and `rdfs:isDefinedBy` links) used in this file.  Also note that the descriptions provided in this ontology do not provide a complete and correct formal description of either the syntax or the semantics of the introduced terms (please see the OWL 2 recommendations for the complete and normative specifications).\nFurthermore, the information provided by this ontology may be misleading if not used with care. This ontology SHOULD NOT be imported into OWL ontologies. Importing this file into an OWL 2 DL ontology will cause it to become an OWL 2 Full ontology and may have other, unexpected, consequences.",
  "exampleResource": [
    "http://www.w3.org/2002/07/owl#Axiom",
    "http://www.w3.org/2002/07/owl#Class",
    "http://www.w3.org/2002/07/owl#Thing",
    "http://www.w3.org/2002/07/owl#sameAs"
  ],
  "foaf:homepage": "https://www.w3.org/TR/owl2-overview/",
  "namespace": {
    "@type": "Namespace",
    "alias": "owl",
    "prefix": "http://www.w3.org/2002/07/owl#"
  },
  "organization": "w3c",
  "prov:wasDerivedFrom": {
    "@type": "sdo:Dataset",
    "sdo:distribution": {
      "@type": "sdo:DataDownload",
      "sdo:contentUrl": "http://www.w3.org/2002/07/owl#"
    }
  },
  "sdo:about": [
    "Vocabulary"
  ],
  "sdo:identifier": "owl",
  "sdo:image": "owl.png",
  "sdo:license": "CC-BY-SA",
  "sdo:name": "Web Ontology Language (OWL)",
  "version": {
    "@type": "SemanticVersion",
    "major": 2,
    "minor": 0
  }
}
```

### Organization configuration format

One organization configuration file describes exactly one
organization.  The file name `ORGANIZATION.json` corresponds with the
`"ORGANIZATION"` value of the `sdo:identifier` key in the JSON
content.

The value of the `sdo:image` key is the file name of an image in the
`/img` directory.

An organization must occur in at least one dataset description (see
above), otherwise there is no use for including it in the LOD Cloud.

The snippet below shows the JSON contents for the organization that is
described in file `w3c.json`.  Notice that the value for key
`sdo:identifier` is `"w3c"`.  This represents the organization that
publishes the dataset from the example snippet in [the previous
section](#dataset-configuration).

```json
{
  "@type": "sdo:Organization",
  "dct:description": "The World Wide Web Consortium (W3C) is an international community where Member organizations, a full-time staff, and the public work together to develop Web standards. Led by Web inventor and Director Tim Berners-Lee and CEO Jeffrey Jaffe, W3C's mission is to lead the Web to its full potential. Contact W3C for more information.",
  "foaf:homepage": "https://www.w3.org",
  "sdo:identifier": "w3c",
  "sdo:image": "w3c.png",
  "sdo:name": "World Wide Web Consortium (W3C)"
}
```

## Context

The configuration files in this repository can themselves be imported
as Linked Open Data, by including the JSON-LD context stored in
[`rdf/lod-cloud.jsonld`](https://raw.githubusercontent.com/TriplyDB/LOD-Cloud/master/rdf/lod-cloud.jsonld).

## Pull request

In order to add a new Linked Open Data to this repository, create a
[pull request](https://github.com/TriplyDB/LOD-Cloud/pulls) that
includes the following:

  - A dataset file `dataset/DATASET.json` whose contents adhere to the
    [dataset configuration format](#dataset-configuration-format).

  - An organization file `organization/ORGANIZATION.json` whose
    contents adhere to the [organization configuration
    format](#organization-configuration-format).

  - A dataset image file and an organization image file in the `/img`
    directory.  The following image formats can be used: JPEG, PNG,
    SVG.

  - The dataset file must mention the local name of the corresponding
    organization file (see section [Configuration
    format](#configuration-format)).

  - The dataset and organization files must mention an image file in
    the `/img` directory.  (see section [Configuration
    format](#configuration-format)).
