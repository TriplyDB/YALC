---
name: Dataset request
about: Request for including a specific dataset
title: "ORGANIZATION/DATASET@VERSION"
labels: ''
assignees: ''

---

* `ORGANIZATION`: The organization (example: `w3c`; must use `[A-Z][a-z][0-9]-`)
* `DATASET`: The dataset name (example: `owl`; must use `[A-Z][a-z][0-9]-`)
* `MAJOR.MINOR.PATCH`: The dataset version (default: 1.0.0)

# Dataset information

* Dataset homepage: URL
* Dataset image: URL
* Dataset license: URL or NAME
* Dataset name: NAME

## Dataset description

DESCRIPTION (Markdown)

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
* Organization name: NAME

## Organization description

DESCRIPTION (Markdown)
