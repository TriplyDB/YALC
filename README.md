<img src="img/triply.png" align="right" height="150">

[![](https://img.shields.io/badge/datasets-51-brightgreen)](datasets)
[![](https://img.shields.io/badge/organizations-17-yellow)](organizations)
[![](https://img.shields.io/badge/errors-19-red)](datasets/errors)
[![](https://img.shields.io/badge/todo-5-orange)](datasets/todo)
[![](https://img.shields.io/badge/too-little-info-6-orange)](datasets/too-little-info)

# YALC: Yet Another LOD Cloud

## Get started

To use the LOD Cloud, go to https://triplydb.com and search for your
favorite Linked Dataset.

## Contribute

If your favorite Linked Dataset is not yet part of TriplyDB, you can
add its configuration in a [pull
request](https://github.com/TriplyDB/YALC/pulls) or you can open a
‘Dataset request’ [issue](https://github.com/TriplyDB/YALC/issues).

## Repository structure

This registry contains records for the Linked Open Datasets that are
included in TriplyDB (https://triplydb.com) for context.

This repository is structured in the following directories:

<dl>
  <dt><a href="datasets"><code>/datasets</code></a></dt>
  <dd>Contains one configuration file for each Linked Open Dataset.</dd>
  <dt><a href="datasets/errors"><code>/datasets/errors</code></a></dt>
  <dd>Contains one configuration file for each Linked Open Dataset that cannot yet be uploaded because it contains errors.</dd>
  <dt><a href="datasets/todo"><code>/datasets/todo</code></a></dt>
  <dd>Contains one configuration file for each Linked Open Dataset that cannot yet be uploaded because some functionality is still missing.</dd>
  <dt><a href="datasets/too-little-information"><code>/datasets/too-little-information</code></a></dt>
  <dd>Contains partial configuration files for datasets for which currently have too little information.</dd>
  <dt><a href="img"><code>/img</code></a></dt>
  <dd>Contains images that are used in dataset and organization configurations.</dd>
  <dt><a href="organizations"><code>/organizations</code></a></dt>
  <dd>Contains one configuration file for each organization.</dd>
  <dt><a href="rdf"><code>/rdf</code></a></dt>
  <dd>Contains the RDF definitions that are used by the configuration files in this repository, and includes small RDF datasets that are part of the LOD Cloud but for which we could not find an online publication elsewhere.</dd>
</dl>

## Configuration format

The files in this repository follow a specific JSON-based
configuration format.

### Dataset configuration format

The dataset configuration format is used for files in the `/datasets`
directory.

The following properties are crucial for properly connecting the
configuration files together:

  1. The value of the `image` key is the name of an image file in the
     `/img` directory.

  2. The value of the `organization` key is `"ORGANIZATION"`, which
     corresponds to the file name `ORGANIZATION.json` in the
     `/organizations` directory (see the [Organization configuration
     format](#organization-configuration-format) section below).

The following example shows the full dataset configuration for file
`datasets/owl.json`.  Notice that the value for key `image` is
`"owl.png"` and the value for key `organization` is `"w3c"`.

```json
{
  "about": [
    "topic:vocabulary"
  ],
  "description": "This ontology partially describes the built-in classes and properties that together form the basis of the RDF/XML syntax of OWL 2.  The content of this ontology is based on Tables 6.1 and 6.2 in Section 6.4 of the OWL 2 RDF-Based Semantics specification, available at <http://www.w3.org/TR/owl2-rdf-based-semantics/>.\n\nPlease note that those tables do not include the different annotations (labels, comments and `rdfs:isDefinedBy` links) used in this file.  Also note that the descriptions provided in this ontology do not provide a complete and correct formal description of either the syntax or the semantics of the introduced terms (please see the OWL 2 recommendations for the complete and normative specifications).\n\nFurthermore, the information provided by this ontology may be misleading if not used with care. This ontology SHOULD NOT be imported into OWL ontologies. Importing this file into an OWL 2 DL ontology will cause it to become an OWL 2 Full ontology and may have other, unexpected, consequences.",
  "exampleResource": [
    "owl:Axiom",
    "owl:Class",
    "owl:Thing",
    "owl:sameAs"
  ],
  "homepage": "https://www.w3.org/TR/owl2-overview",
  "id": "w3c/owl@2.0",
  "image": "owl.png",
  "name": "Web Ontology Language (OWL)",
  "namespace": "http://www.w3.org/2002/07/owl#",
  "prefix": {
    "owl": "http://www.w3.org/2002/07/owl#"
  },
  "url": "http://www.w3.org/2002/07/owl#"
}
```

### Organization configuration format

The organization configuration format is used for files in the
`/organizations` directory.

The following properties are crucial for properly connecting the
configuration files together:

  1. Each organization configuration file describes exactly one
     organization that publishes Linked Open Data.  The file name
     `ORGANIZATION.json` corresponds with the `"ORGANIZATION"` value
     of the `identifier` key.

  2. The value of the `image` key is the file name of an image in the
     `/img` directory.

The following example shows the full organization configuration file
`organizations/w3c.json`.  Notice that the value for key `identifier`
is `"w3c"`, and the value for key `image` is `"w3c.png"`.

```json
{
  "description": "The World Wide Web Consortium (W3C) is an international community where Member organizations, a full-time staff, and the public work together to develop Web standards.  Led by Web inventor and Director Tim Berners-Lee and CEO Jeffrey Jaffe, W3C's mission is to lead the Web to its full potential.  Contact W3C for more information.",
  "homepage": "https://www.w3.org",
  "id": "w3c",
  "image": "w3c.png",
  "name": "World Wide Web Consortium (W3C)"
}
```

### Semantic definitions

The configuration files in this repository can themselves be processed
as Linked Data.  This is achieved by the following definition files:

<dl>
  <dt><a href="rdf/yalc.jsonld"><code>/rdf/yalc.jsonld</code></a></dt>
  <dd>Configuration files can be processed as RDF by including the context stored in this file.</dd>
  <dt><a href="rdf/yalc.trig"><code>/rdf/yalc.trig</code></a></dt>
  <dd>Definitions for the classes and properties that are used in the configuration files.</dd>
  <dt><a href="rdf/topics.jsonld"><code>/rdf/topics.jsonld</code></a></dt>
  <dd>Topic hierarchy that is used to tag datasets.</dd>
</dl>

## Pull request details

In order to add a new Linked Open Data to this repository, create a
[pull request](https://github.com/TriplyDB/YALC/pulls) that includes
the following:

  - A dataset file `datasets/DATASET.json` whose contents adhere to
    the [dataset configuration format](#dataset-configuration-format).

  - An organization file `organizations/ORGANIZATION.json` whose
    contents adhere to the [organization configuration
    format](#organization-configuration-format).

  - A dataset image file and an organization image file in the `/img`
    directory.  The following image formats can be used: JPEG, PNG,
    SVG.

  - The dataset file must mention the local name of the corresponding
    organization file (see section [Configuration
    format](#configuration-format)).

  - The dataset and organization files must mention an image file in
    the `/img` directory (see section [Configuration
    format](#configuration-format)).

## Erroneous dataset

Unfortunately, many datasets cannot be included into the LOD Cloud
because they do follow standards.  Datasets that are currently not
included because of errors can be found in the
[`/errors`](datasets/errors) directory.
