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

### Artists

```bash
curl \
  -X POST 'http://meilisearch:7700/indexes/artists/documents?primaryKey=id' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY' \
  --data-binary @artists.json
```

### Books

```bash
curl \
  -X POST 'http://meilisearch:7700/indexes/aozora_books/documents?primaryKey=id' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY' \
  --data-binary @aozora_books.json
```

## Search in an index with GET route

### Artists

```bash
curl \
  -X GET http://meilisearch:7700/indexes/artists/search?q=YOASOBI \
  -H 'Authorization: Bearer API_KEY'
```

### Books

```bash
curl \
  -X GET http://meilisearch:7700/indexes/aozora_books/search?q=%E8%8A%A5%E5%B7%9D \
  -H 'Authorization: Bearer API_KEY'
```
