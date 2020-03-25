# Erroneous datasets

This directory contains configuration files for datasets that cannot
be uploaded because they contain errors.

## Erroneous `Content-Type` header

The following datasets are serviced with an incorrect `Content-Type`
header:

  - [OGC GeoSPARQL](geo.json) emits `text/xml`; should be
    `application/rdf+xml`
  - [Provenance](provenance.json) emits `application/rdf\+xml`; should
    be `application/rdf+xml`

## Erroneous handling of `Accept` header

The following `Accept` header value is used when accessing RDF
documents online:

```
application/trig,
application/n-quads,
application/n-triples;q=0.9,
text/turtle;q=0.9,
application/x-turtle;q=0.9,
text/rdf+n3;q=0.9,
application/rdf+xml;q=0.8,
text/plain;q=0.8,
*/*;q=0.7
```

The following datasets are serviced from servers that cannot process
the above `Accept` header correctly:

  - [DBpedia DataID](dataid.json)
  - [W3C Data Cube](qb.json)
  - [W3C PROV-O](prov.json)
  - [W3C SPARQL Service Description](sd.json)

## Erroneous IRIs

The following datasets contain incorrect IRIs:

  - [Rijksmuseum Actors](actors.json) line 106.332: `<skos:exactMatch
    rdf:resource=" https://rkd.nl/explore/artists/420649"/>`

## Syntax errors

The following datasets contain syntax errors:

  - [GeoNames](geonames.json) is a concatenation of RDF/XML files with
    IRIs interspersed.  This was communicated to the GeoNames forum:
    [link](http://forum.geonames.org/gforum/forums/show/4.page)
