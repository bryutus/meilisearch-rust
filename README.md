# meilisearch-rust

## Listing API keys

```bash
curl \
  -X GET 'http://meilisearch:7700/keys' \
  -H 'Authorization: Bearer MASTER_KEY'
```

## List all indexes

```bash
curl \
  -X GET http://meilisearch:7700/indexes \
  -H 'Authorization: Bearer API_KEY'
```

## Add or replace documents

```bash
curl \
  -X POST 'http://meilisearch:7700/indexes/artists/documents?primaryKey=id' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY' \
  --data-binary @artists.json
```

## Search in an index with GET route

```bash
curl \
  -X GET http://meilisearch:7700/indexes/artists/search?q=YOASOBI \
  -H 'Authorization: Bearer API_KEY' \
```
