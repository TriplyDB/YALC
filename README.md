<img src="img/triply.png" align="right" height="150">

[![](https://img.shields.io/badge/datasets-262-brightgreen)](datasets)
[![](https://img.shields.io/badge/organizations-63-brightgreen)](organizations)
[![](https://img.shields.io/badge/tooLittleInfo-22-yellow)](datasets/too-little-info)
[![](https://img.shields.io/badge/todo-14-red)](datasets/todo)
[![](https://img.shields.io/badge/errors-45-red)](datasets/errors)

# YALC: Yet Another LOD Cloud

This repository contains configuration files for Linked Open Datasets
that are published on the web.  These datasets can be freely used at
<https://triplydb.com>.

## Get started

Go to https://triplydb.com and used the search bar to search for
datasets.

## Contribute

If your favorite Linked Dataset is not yet available at
<https://triplydb.com>, you can add its configuration in a [pull
request](https://github.com/TriplyDB/YALC/pulls) or you can open a
‘Dataset request’ [issue](https://github.com/TriplyDB/YALC/issues).

## Repository structure

This repository contains the following directories:

<dl>
  <dt><a href="datasets"><code>/datasets</code></a></dt>
  <dd>
    Contains one configuration file for each Linked Open Dataset.
    <dl>
      <dt><a href="datasets/errors"><code>/datasets/errors</code></a></dt>
      <dd>Contains one configuration file for each Linked Open Dataset that cannot yet be uploaded because it contains errors.</dd>
      <dt><a href="datasets/todo"><code>/datasets/todo</code></a></dt>
      <dd>Contains one configuration file for each Linked Open Dataset that cannot yet be uploaded because some functionality is still missing.</dd>
      <dt><a href="datasets/too-little-info"><code>/datasets/too-little-info</code></a></dt>
      <dd>Contains partial configuration files for datasets for which currently have too little information.</dd>
    </dl>
  </dd>
  <dt><a href="img"><code>/img</code></a></dt>
  <dd>Contains images that are used in dataset and organization configurations.</dd>
  <dt><a href="organizations"><code>/organizations</code></a></dt>
  <dd>Contains one configuration file for each organization.</dd>
  <dt><a href="rdf"><code>/rdf</code></a></dt>
  <dd>Contains the RDF definitions that are used by the configuration files in this repository, and includes small RDF datasets that are part of the LOD Cloud but for which we could not find an online publication elsewhere.</dd>
</dl>

## Configuration format

The configuration files in YALC all follow a simple JSON configuration
formats.  The following subsections document the formats for dataset
configuration files and for organization configuration files.

### Dataset configuration format

The dataset configuration format is used for the files in the
[`/datasets`](datasets) subdirectory.  Each file contains a JSON
object with the following keys:

<dl>
  <dt><code>"about"</code></dt>
  <dd>
    <p>Zero or more topics that characterize what the dataset is about.</p>
    <p>Topic values must also appear in the <a href="rdf/topics.jsonld">topic hierarchy</a>.  Topic values are specified with their IRI local name.  For example, <code>"eGov"</code> is used to denote the topic with IRI <code>https://triplydb.com/Triply/yalc/id/topic/eGov</code>.</p>
    <p>For vocabularies, this key must include the value <code>"vocabulary"</code>.</p>
    <p>This key is optional, in which case the dataset has zero topics.</dd>

  <dt><code>"asset"</code></dt>
  <dd>
    <p>Links to binary files that are part of the dataset.<p>
    <p>One example is documentation files (DOCX, PDF, ODT) that either occur in the dataset or that describe it.  Another example is media files (images, sounds, videos) that occur in the dataset.</p>
    <p>This key is optional.</p>
  </dd>

  <dt><code>"description"</code></dt>
  <dd>
    <p>The description of the dataset.</p>
    <p>This must be at least 50 characters and at most 1,000 characters long.</p>
    <p>This key is required.</p>
  </dd>

  <dt><code>"homepage"</code></dt>
  <dd>
    <p>The URL of the web page that is the authoritative location on the Internet for human-readable information about the dataset.</p>
    <p>Sometimes a dataset does not have its own web page.  In such cases it is possible to specify a web page that describes or mentions the dataset.</p>
    <p>This key is optional, in which case the dataset will have no homepage.</p>
  </dd>

  <dt id="dataset-id"><code>"id"</code></dt>
  <dd>
    <p>Identifies the dataset and (optionally) its organization and version.  The format for this value is <code>"ORGANIZATION/DATASET@VERSION"</code>.</p>
    <p>The values for <code>ORGANIZATION</code> and <code>DATASET</code> must be at least 2 and at most 40 characters long.  They must consist of digits (<code>[0-9]</code>), letters (<code>[A-Za-z]</code>), and hyphens (<code>-</code>).</p>
    <p>The value for <code>ORGANIZATION</code> must correspond with a file named <code>ORGANIZATION.json</code> in the <a href="organizations"><code>/organizations</code></a> subdirectory.  See the <a href="#organization-configuration-format">organization configuration
     format section</a> for more information.</p>
    <p>The value of <code>VERSION</code> must follow one of the following formats:</p>
    <table>
      <thead>
        <tr><th>VERSION format</th><th>VERSION_OBJECT format</th></tr>
      </thead>
      <tbody>
        <tr><td><code>MAJOR[.MINOR[.PATCH]]</code></td><td><code>{"@type": "SemanticVersion", "major": "MAJOR", "minor": "MINOR", "patch": "PATCH"}</code></td></tr>
        <tr><td><code>YYYY</code></td><td><code>{"@type": "TemporalVersion", "year": "YYYY"}</code></td></tr>
        <tr><td><code>YYYY-MM</code></td><td><code>{"@type": "TemporalVersion", "yearMonth": "YYYY-MM"}</code></td></tr>
        <tr><td><code>YYYY-MM-DD</code></td><td><code>{"@type": "TemporalVersion", "date": "YYYY-MM-DD"}</code></td></tr>
      </tbody>
    </table>
    <p>If the organization that issues the dataset is not known, the <code>ORGANIZATION/</code> prefix can be omitted.  If omitted, the ‘none’ organization will be used.</p>
    <p>If the version of the dataset is not known, the <code>@VERSION</code> suffix can be omitted.  If omitted, <code>"1.0.0"</code> is used as the dataset version.</p>
    <p>The <code>DATASET</code> part of this value is required.</p>
  </dd>

  <dt><code>"image"</code></dt>
  <dd>
    <p>The logo or image for this dataset.  This value must be the local name for a file in the <a href="img"><code>/img</code></a> subdirectory.</p>
    <p>This key is optional.  If it is omitted, the image of the dataset's organization (if any) is used.</p>
  </dd>

  <dt><code>"license"</code></dt>
  <dd>
    <p>The license of this dataset.  The value must be one of the following:</p>
    <ul>
      <li><code>https://creativecommons.org/licenses/by-nc/4.0/</code></li>
      <li><code>https://creativecommons.org/licenses/by-sa/3.0/</code></li>
      <li><code>https://creativecommons.org/licenses/by/1.0/</code></li>
      <li><code>https://creativecommons.org/licenses/by/2.0/</code></li>
      <li><code>https://creativecommons.org/licenses/by/3.0/</code></li>
      <li><code>https://creativecommons.org/licenses/by/4.0/</code></li>
      <li><code>https://creativecommons.org/licenses/by/4.0/</code></li>
      <li><code>https://creativecommons.org/publicdomain/zero/1.0/</code></li>
      <li><code>https://opendatacommons.org/licenses/by/1-0/</code></li>
      <li><code>https://opendatacommons.org/licenses/odbl/1.0/</code></li>
      <li><code>https://opendatacommons.org/licenses/pddl/1-0/</code></li>
      <li><code>https://www.gnu.org/licenses/lgpl-3.0.html</code></li>
      <li><code>https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/</code></li>
    </ul>
    <p>This key is optional.  Since datasets in YALC must have a license, the value <code>https://creativecommons.org/licenses/by/4.0/</code> is used in case this key is omitted.
  </dd>

  <dt><code>"name"</code></dt>
  <dd>
    <p>The display name of the dataset.</p>
    <p>This key is optional.</p>
  </dd>

  <dt><code>"namespace"</code></dt>
  <dd>
    <p>Zero or more IRIs that denote namespaces for this dataset.</p>
    <p>IRIs within these specified namespaces will have this dataset as their authority.  Ideally, every IRI has an authoritative dataset to which it belongs.  An IRI can have at most one authoritative dataset to which it belongs.</p>
    <p>This key is optional.  If it is omitted and the <code>"prefix"</code> key is present, then the IRIs that appear in the value of the <code>"prefix"</code> key are used as the namespaces.</p>
  </dd>

  <dt><code>"prefix"</code></dt>
  <dd>
    <p>A JSON object containing RDF prefix declarations.  The keys of this JSON object are aliases that can be used to denote their corresponding IRI values.</p>
    <p>This key is optional.
  </dd>

  <dt><code>"successor"</code></dt>
  <dd>
    <p>Allows an outdated version of a dataset to point to its successor version.</p>
    <p>The value notation is identical to the notation that is used for the <a href="#dataset-id"><code>"id"</code></a> key.</p>
  </dd>

  <dt><code>"url"</code><dt>
  <dd>
    <p>Zero or more URLs from which an RDF serialization of the dataset can be downloaded.</p>
    <p>This key may be omitted if one or more namespaces are specified (see the documentation of the <code>"namespace"</code> key for more details).</p>
  </dd>
</dl>

The following example shows the full dataset configuration for file
`datasets/owl@2.0.json`.  Notice the following details:
  - The value for key `"id"` is `"w3c/owl@2.0"`, whose prefix corresponds to the organization configuration file [`organizations/w3c.json`](organizations/w3c.json).
  - The value for key `"image"` is
`"owl.png"`, which corresponds to file [`img/owl.png`](img/owl.png).
  - While the `"namespace"` key is not specified, its value is implicitly set to `"http://www.w3.org/2002/07/owl#"`, which is specified in the `"prefix"` key.
  - While the `"url"` key is not specified, its value is implicitly set to `"http://www.w3.org/2002/07/owl#"`, because this is the (implicit) value of the `"namespace"` key.

```json
{
  "about": "vocabulary",
  "description": "This ontology partially describes the built-in classes and properties that together form the basis of the RDF/XML syntax of OWL 2.  The content of this ontology is based on Tables 6.1 and 6.2 in Section 6.4 of the OWL 2 RDF-Based Semantics specification, available at <http://www.w3.org/TR/owl2-rdf-based-semantics/>.\n\nPlease note that those tables do not include the different annotations (labels, comments and `rdfs:isDefinedBy` links) used in this file.  Also note that the descriptions provided in this ontology do not provide a complete and correct formal description of either the syntax or the semantics of the introduced terms (please see the OWL 2 recommendations for the complete and normative specifications).\n\nFurthermore, the information provided by this ontology may be misleading if not used with care. This ontology SHOULD NOT be imported into OWL ontologies. Importing this file into an OWL 2 DL ontology will cause it to become an OWL 2 Full ontology and may have other, unexpected, consequences.",
  "homepage": "https://www.w3.org/TR/owl2-overview",
  "id": "w3c/owl@2.0",
  "image": "owl.png",
  "name": "Web Ontology Language (OWL)",
  "prefix": {
    "owl": "http://www.w3.org/2002/07/owl#"
  }
}
```

### Organization configuration format

The organization configuration format is used for files in the
[`/organizations`](organizations) subdirectory.  Each file contains a JSON object with the following keys:

<dl>
  <dt><code>"description"</code></dt>
  <dd>
    <p>The description of the dataset.</p>
    <p>This must be at least 50 characters and at most 1,000 characters long.</p>
    <p>This key is required.</p>
  </dd>

  <dt><code>"homepage"</code></dt>
  <dd>
    <p>The URL of the main web page for human-readable information about the organization.</p>
    <p>This key is optional, in which case the organization will have no homepage.</p>
  </dd>

  <dt><code>"id"</code></dt>
  <dd>
    <p>Identifies the organization.</p>
    <p>The value must be at least 2 and at most 40 characters long.  It must consist of digits (<code>[0-9]</code>), letters (<code>[A-Za-z]</code>), and hyphens (<code>-</code>).</p>
  </dd>

  <dt><code>"image"</code></dt>
  <dd>
    <p>The logo or image for the organization.  This value must be the local name for a file in the <a href="img"><code>/img</code></a> subdirectory.</p>
    <p>This key is optional.  If it is omitted, the image <a href="/img/rdf.png"><code>img/rdf.png</code></a> is used.</p>
  </dd>

  <dt><code>"name"</code></dt>
  <dd>
    <p>The display name of the organization.</p>
    <p>This key is optional.</p>
  </dd>
</dl>

The following example shows the full organization configuration file
[`organizations/w3c.json`](organizations/w3c.json):

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

The configuration files in this repository can themselves be processed as Linked Data.  This is achieved by the following definition files:

<dl>
  <dt><a href="rdf/yalc.jsonld"><code>/rdf/yalc.jsonld</code></a></dt>
  <dd>Configuration files can be processed as RDF by including the context stored in this file.</dd>
  <dt><a href="rdf/yalc.trig"><code>/rdf/yalc.trig</code></a></dt>
  <dd>Definitions for the classes and properties that are used in the configuration files.</dd>
  <dt><a href="rdf/topics.jsonld"><code>/rdf/topics.jsonld</code></a></dt>
  <dd>Topic hierarchy that is used to tag datasets.</dd>
</dl>

The Linked Data version of the configuration files is itself published [over here](https://triplydb.com/Triply/YALC).

## Pull request details

Pull requests can be created to add new datasets, or to improve existing datasets.

### Pull request for a new dataset

In order to add a new Linked Open Data to this repository, create a [pull request](https://github.com/TriplyDB/YALC/pulls) that includes at least the following:

  - A dataset file `datasets/DATASET.json` whose contents adhere to the [dataset configuration format](#dataset-configuration-format).

If the organization that is specified in the dataset file does not yet have an organization file, it must be included as well:

  - An organization file `organizations/ORGANIZATION.json` whose contents adhere to the [organization configuration format](#organization-configuration-format).

If the dataset and/or organization file specifies an image that does not yet belong to the `/img` subdirectory, then it must be added as well:

  - A dataset image file and/or an organization image file in the `/img` directory.  The following image formats can be used: JPEG, PNG, SVG.  SVG images are preferred, since they are smaller in size and do not suffer from resolution issues.

### Pull request for an existing dataset

Feel free to improve the configurations for existing datasets.
