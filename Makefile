.PHONY : build

all: build

build:
	# execute docker compose build inside the frontend to create node
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

fe-shell:
	docker run -it -v ${CURDIR}/:/home/frontenduser/workdir -p 3000:3000 fe-container bash

fe-exec:
	docker run -it -v ${CURDIR}/:/home/frontenduser/workdir -p 3000:3000 fe-container npm start

fe-build:
	docker run -it -v ${CURDIR}/:/home/frontenduser/workdir -p 3000:3000 fe-container npm run build

fe-test:
	docker run -it -v ${CURDIR}/:/home/frontenduser/workdir -p 3000:3000 fe-container npm test

destroy:
	docker-compose down -v
	docker-compose kill
	docker-compose rm -vf || true
	sleep 5
	docker-compose rm -vf