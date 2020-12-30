# Erroneous datasets

Unfortunately, many datasets cannot be included into the LOD Cloud
because they do follow standards.  Datasets that are currently not
included because of errors are described in this directory.

## Certificate error

The following datasets can not be accessed because of an incorrect
certificate:

  - [Who Am I!](wai@2010-11-08.json)

## Does not exist (404 reply)

The following dataset can not be accessed because their online
location does not exist:

  - [The administrative geography and civil voting area ontology](admingeo.json)
  - [DatCatInfo](datcat.json)
  - [Dublin Core Elements](dce.json)
  - [Geometry Ontology](os_geo.json)
  - [PRISM](prism@2.1.json)
  - [SIOC](sioc@1.36.json)
  - [Spatial Relations Ontology](sro.json)
  - [WAIVER](wv.json)

## Intentional server error (503) for DDoS mitigation

Some servers use CloudFlare DDoS mitigation.  The intention is to
allow human users who access the data through a web browser with
JavaScript engine, and to disallow machine users who access the data
from scripts (and typically without a JavaScript engine).

The CloudFlare process works as follows:

  1. When a human user first visits a URL in their web browser with
     JavaScript engine, the browser does not know that the URL will be
     serviced from a CloudFlare server.  This is therefore a regular
     HTTP request.

  2. The CloudFlare server does not support regular HTTP requests and
     sends back a 503 server error, together with an HTML page body
     containing JavaScript code.

  3. The web browser loads the HTML page with the intention of showing
     a human-readable message to the user.  However, the HTML page
     also includes JavaScript code from CloudFlare.  This code is
     tries to determine whether the user is a legitimate user.  The
     requirements for being a legitimate user are unclear, but at
     least includes the requirements under step (1): accessing the URL
     through a web browser with a JavaScript engine.

  4. If the CloudFlare code determines that the user who isssued the
     HTTP request under step (1) is a valid user, the JavaScript code
     automatically issues another HTTP requests for the URL originally
     requested in step (1).  The JavaScript code ensures that the new
     request contains certain tokens to communicate to the server that
     the request is now initiated through CloudFlare JavaScript code.

  5. Observing the tokens in the new HTTP request, the server verifies
     whether the tokens make the request eligible for a reply.  If the
     request is considered eligible, the reply will provide access to
     the resource requested in step (1).  The reply will also contain
     `Set-Cookie` header.

  6. The web browser retains the cookie.  If the same resource is
     requested in the future, the web browser will include the cookie
     in the request, and will directly obtain access to the resource.

Since this process requires a JavaScript engine and Cookie store, most
machine users will not be able to access datasets disseminated through
CloudFlare.

The following datasets cannot be accessed because they use the
CloudFlare approach:

  - [AGROVOC VoID](agrovoc-void.json)

## Flaky server

The following dataset regularly cannot be downloaded because of an
unstable server:

  - Semantic Finlex

## Erroneous `Content-Type` header

The following datasets are serviced with an incorrect `Content-Type`
header:

  - [BabelNet](bn.json) emits `text/rdf+n3;charset=utf-8`
    i.o. `text/turtle`.
  - [BIBO](bibo.json) emits `application/xml`
    i.o. `application/rdf+xml`.
  - [Bibsonomy](bibsonomy.json) emits `application/xml`
    i.o. `application/rdf+xml`.
  - [OGC GeoSPARQL](geo.json) emits `text/xml` i.o.
    `application/rdf+xml`.
  - [Provenance](provenance.json) emits `application/rdf\+xml` i.o.
    `application/rdf+xml`.
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
  - [W3C R2RML](rr.json) emits `text/html` i.o. `application/rdf+xml`.

## No `Content-Type` header

The following datasets emit no `Content-Type` header at all:

  - [Agrontology](agrontology.json)
  - [Datatype Schema](dtype.json)
  - [DOAP](doap.json)
  - [lexinfo 2.0](lexinfo@2.0.json)
  - [lexinfo 3.0](lexinfo@3.0.json)
  - [Lexvo Ontology](lvont.json)
  - [SPIN: Modeling Vocabulary](spin@2014-11-07.json)

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
the above `Accept` header:

  - [DBpedia DataID](dataid.json)
  - [Getty VoID](getty-void.json)
  - [ISBD ELements](isbd.json)
  - [W3C Data Cube](qb@0.2.json)
  - [W3C Metadata Vocabulary for Tabular Data](csvw.json)
  - [W3C PROV-O](prov.json)
  - [W3C RDFa](rdfa@2013-03-11.json)
  - [W3C SPARQL Service Description](sd@1.1.json)

Use the following cURL command to test these URLs:

```sh
curl -vL -H 'Accept: application/trig, application/n-quads, application/n-triples;q=0.9, text/turtle;q=0.9, application/x-turtle;q=0.9, text/rdf+n3;q=0.9, application/rdf+xml;q=0.8, text/plain;q=0.8, */*;q=0.7' -H 'User-Agent: TriplyDB/develop (https://api.nightly.triplydb.com/info)' '{url}' | head
```

## Erroneous IRIs

### Incorrect escaping

Character escapes in IRIs must use `%hh`-notation.

#### `\u`-notation

The following datasets use `\u`-escaping:

  - [Library of Congress Names](loc-names.json) line 66,292,711:
    `<http://viaf.org/processed/NLI\u007C001461487>`
  - [VIAF](viaf.json) line 841,558:
    `<http://dbpedia.org/resource/National_Theatre_"To\u0161a_Jovanovi\u0107">`

### Unescaped characters

Some characters are not allowed to appear unescaped in IRIs.

#### Unescaped backslash characters

  - [VIAF](viaf.json) line 841,558:
    `<http://dbpedia.org/resource/National_Theatre_"To\u0161a_Jovanovi\u0107">`

#### Unescaped caret characters

  - [Pleiades](pleiades.json) line 60.882:
    `<http://www.persee.fr/web/revues/home/prescript/article/racf_0220-6617_1991_num_30_1_2657?luceneQuery=%28%2B%28content%3AAQUAE+title%3AAQUAE^2.0+fullContent%3AAQUAE^100.0+fullTitle%3AAQUAE^140.0+summary%3AAQUAE+authors%3AAQUAE^5.0+illustrations%3AAQUAE^4.0>`;
    reported at <https://github.com/isawnyu/pleiades-rdf/issues/7>.

#### Unescaped double quote

  - [Linked Movie Database (2009-05-18)](linkedmdb@2009-05-18.json)
    line 46.397:
    `http://dbpedia.org/resource/Wkw/tk/1996%407%2755"hk.net`.

#### Unescaped space characters

  - [ISO 19115-1@2014](iso_19115-1@2014.json) file
    `https://raw.githubusercontent.com/ISO-TC211/GOM/master/isotc211_GOM_harmonizedOntology/iso19115/-1/2014/ExampleOfExtendedMatadata.rdf`
    contains a space in IRI
    `http://def.isotc211.org/iso19115/-1/2014/ExampleOfExtendedMatadata/code/KeywordTypeCode
    -BioCollection`.
  - [ISO 19115-1@2018](iso_19115-1@2018.json) file
    `https://raw.githubusercontent.com/ISO-TC211/GOM/master/isotc211_GOM_harmonizedOntology/iso19115/-1/2018/ExampleOfExtendedMatadata.rdf`
    contains a space in IRI
    `http://def.isotc211.org/iso19115/-1/2014/ExampleOfExtendedMatadata/code/KeywordTypeCode
    -BioCollection`.
  - [LingHub](linghub.json) line 11:
    `<http://logd.tw.rpi.edu/source/congress-gov/file/biographical-directory-of-the-united-states-congress/version/2012-Jan-04/conversion/congress-gov-biographical-directory-of-the-united-state
    s-congress-2012-Jan-04.ttl.tgz>`
  - [Linked Movie Database (2012-02-10)](linkedmdb@2012-02-10.json)
    line 35.710: `<http://data.linkedmdb.org/resource/country/iso
    alpha2>`.
  - [Rijksmuseum Actors](actors.json) line 106.332: `<skos:exactMatch
    rdf:resource=" https://rkd.nl/explore/artists/420649"/>`

## Syntax errors

The following datasets contain syntax errors:

  - [DBpedia](dbpedia@2019-08-30.json) URL
    `https://downloads.dbpedia.org/repo/lts/text/short-abstracts/2016.10.01/short-abstracts_lang=yue.ttl.bz2`
    contains an unescaped control character (0x11, device control 1)
    on line 2,016.

  - [GeoNames](gn.json) is a concatenation of RDF/XML files with IRIs
    interspersed.  This was communicated to [the GeoNames
    forum](http://forum.geonames.org/gforum/posts/list/36258.page).

  - [Getty Art & Architecture Thesaurus (AAT)](aat.json) file
    `AATOut_WikidataCoref.nt` does not use end-of-triple indicators
    (i.e., trailing dots).
