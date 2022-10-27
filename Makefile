.PHONY : build

all: build

build:
	docker compose build --pull
	docker compose up -d

be-shell:
	docker compose exec be-container /bin/bash

be-exec:
	docker compose exec be-container python app.py

ai-shell:
	docker compose exec ai-container /bin/bash

ai-exec:
	docker compose exec ai-container python app.py

destroy:
	docker-compose down -v
	docker-compose kill
	docker-compose rm -vf || true
	sleep 5
	docker-compose rm -vf