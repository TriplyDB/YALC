---
name: Dataset request
about: Request for including a specific dataset.
title: "ORGANIZATION_NAME/DATASET_NAME@VERSION"
labels: ''
assignees: ''

---

* Organization name: ORGANIZATION_NAME (example: w3c; must use `[A-Z][a-z][0-9]-`)
* Dataset name: DATASET_NAME (example: owl; must use `[A-Z][a-z][0-9]-`)
* Dataset version: MAJOR.MINOR.PATCH (default: 1.0.0)

# Dataset information

* Dataset homepage: URL
* Dataset image: FILE_NAME
* Dataset license: URL
* Dataset name: STRING

## Dataset description

MARKDOWN_STRING

## Namespaces

One or more IRI prefixes that have this dataset as their authority:

  - IRI_PREFIX

## Prefix declarations

One or more pairs that allow IRI prefixes that appear in the dataset
to be replaced by a more readable alias:

  - ALIAS: IRI_PREFIX

## Example resources

One or more of the following items (IRI must appear in the dataset):

  - IRI

# Organization information

* Organization homepage: URL
* Organization image: FILE_NAME
* Organization name: STRING

## Organization description

MARKDOWN_STRING
