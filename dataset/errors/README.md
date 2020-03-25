# Erroneous datasets

This directory contains configuration files for datasets that cannot
be uploaded because they contain errors.

## Erroneous `Content-Type` header

The following datasets are serviced with an incorrect `Content-Type`
header:

  - [`geo.json`](geo.json) emits `text/xml`; should be `application/rdf+xml`
  - [`provenance.json`](provenance.json) emits `application/rdf\+xml`; should be `application/rdf+xml`

## Erroneous handling of `Accept` header

The following `Accept` header value is used when accessing RDF documents online:

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

  - [`dataid.json`](dataid.json)
  - [`prov.json`](prov.json)
  - [`qb.json`](qb.json)
  - [`sd.json`](sd.json)
