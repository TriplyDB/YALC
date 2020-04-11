# Erroneous datasets

Unfortunately, many datasets cannot be included into the LOD Cloud
because they do follow standards.  Datasets that are currently not
included because of errors are described in this directory.

## No longer exists (404 reply)

  - [Dublin Core Elements](dce.json)
  - [LODE](lode.json)

## Erroneous `Content-Type` header

The following datasets are serviced with an incorrect `Content-Type`
header:

  - [BIBO](bibo.json) emits `application/xml`
    i.o. `application/rdf+xml`.

  - [OGC GeoSPARQL](geo.json) emits `text/xml` i.o.
    `application/rdf+xml`.

  - [Provenance](provenance.json) emits `application/rdf\+xml` i.o.
    `application/rdf+xml`.

  - [RDDL](rddl.json) emits `test/plain` i.o. `application/rdf+xml`.

  - [SDMX Attribute](sdmx-attribute.json) emits `text/plain;
    charset=utf-8` i.o. `text/turtle`.

  - [SDMX Code](sdmx-code.json) emits `text/plain; charset=utf-8`;
    should be `text/turtle`.

  - [SDMX Concept](sdmx-concept.json) emits `text/plain;
    charset=utf-8` i.o. `text/turtle`.

  - [SDMX Dimension](sdmx-dimension.json) emits `text/plain;
    charset=utf-8` i.o. `text/turtle`.

  - [SDMX Measure](sdmx-measure.json) emits `text/plain;
    charset=utf-8` i.o. `text/turtle`.

  - [Simple Event Model (SEM)](sem.json) emits `application/rss+xml`
    i.o. `application/rdf+xml`.

The following datasets emit no `Content-Type` header at all:

  - [CIDOC-CRM](crm.json)

  - [DOAP](doap.json)

  - [lexinfo](lexinfo.json)

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

  - [W3C RDFa](rdfa.json)

  - [W3C SPARQL Service Description](sd.json)

## Erroneous IRIs

### Illegal characters

The following datasets contain illegal characters inside IRIs:

  - [VIAF](viaf.json) line 841,558:
    `<http://dbpedia.org/resource/National_Theatre_"To\u0161a_Jovanovi\u0107">`

### Incorrect character escaping

The following datasets contain incorrect character escaping inside
IRIs:

  - [VIAF](viaf.json) line 841,558:
    `<http://dbpedia.org/resource/National_Theatre_"To\u0161a_Jovanovi\u0107">`

### Unescaped spaces

The following datasets contain spaces at the beginnng and/or end of
IRIs:

  - [Rijksmuseum Actors](actors.json) line 106.332: `<skos:exactMatch
    rdf:resource=" https://rkd.nl/explore/artists/420649"/>`

## Syntax errors

The following datasets contain syntax errors:

  - [GeoNames](geonames.json) is a concatenation of RDF/XML files with
    IRIs interspersed.  This was communicated to the GeoNames forum:
    [link](http://forum.geonames.org/gforum/forums/show/4.page)
