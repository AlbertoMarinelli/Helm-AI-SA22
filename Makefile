.PHONY : build

all: build

build:
	# execute docker compose build inside the frontend to create node
	docker compose build --pull
	docker compose up -d

be-shell:
	docker compose exec -it be-container /bin/bash

ai-shell:
	docker compose exec -it ai-container /bin/bash

fe-shell:
	docker compose exec -it fe-container /bin/bash

destroy:
	docker-compose down -v
	docker-compose kill
	docker-compose rm -vf || true
	sleep 5
	docker-compose rm -vf