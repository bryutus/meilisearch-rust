up:
	docker compose up -d

stop:
	docker compose stop

go-package:
	docker exec -it meilisearch-rust-package-1 /bin/bash
