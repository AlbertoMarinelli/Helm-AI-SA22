.PHONY : build

all: help

PROJECT_NAME=HELM

CN="\\033[0m"
CR="\\033[91m"
CG="\\033[92m"
CY="\\033[93m"
CB="\\033[94m"
CT="\\033[37m"
TB="\\033[1m"

help:
	@echo ""
	@echo "============ ${TB}${CB}Project: ${PROJECT_NAME}${CN}"
	@echo ""
	@echo "  ${CY}make build${CN}						build and run containers: ${CR}helmbe${CN}, ${CR}helmai${CN} and ${CR}helmfe${CN}"
	@echo "  ${CY}make destroy${CN}						stop and remove running containers: ${CR}helmbe${CN}, ${CR}helmai${CN} and ${CR}helmfe${CN}"
	@echo "  ${CY}make be-shell${CN}						open shell in ${CR}helmbe${CN}"
	@echo "  ${CY}make ai-shell${CN}						open shell in ${CR}helmai${CN}"
	@echo "  ${CY}make fe-shell${CN}						open shell in ${CR}helmfe${CN}"
	@echo "  ${CY}make be-logs${CN}						open logs in ${CR}helmbe${CN}"
	@echo "  ${CY}make ai-logs${CN}						open logs in ${CR}helmai${CN}"
	@echo "  ${CY}make fe-logs${CN}						open logs in ${CR}helmfe${CN}"

	@echo ""
	@echo "============"
	@echo ""

build:
	@echo "============ ${TB}${CB}Building and start containers${CN} ..."
	@docker compose build --pull
	@docker compose up -d
	@echo "============ Done!"

be-shell:
	@echo "============ ${TB}${CB}Starting shell${CN} ..."
	@docker compose exec -it helmbe /bin/bash

ai-shell:
	@echo "============ ${TB}${CB}Starting shell${CN} ..."
	@docker compose exec -it helmai /bin/bash

fe-shell:
	@echo "============ ${TB}${CB}Starting shell${CN} ..."
	@docker compose exec -it helmfe /bin/bash

be-logs:
	@echo "============ ${TB}${CB}Logs of${CN} ${CR}helmbe${CN} ..."
	@docker compose logs -f helmbe

ai-logs:
	@echo "============ ${TB}${CB}Logs of${CN} ${CR}helmbe${CN} ..."
	@docker compose logs -f helmai

fe-logs:
	@echo "============ ${TB}${CB}Logs of${CN} ${CR}helmbe${CN} ..."
	@docker compose logs -f helmfe

destroy:
	@echo "============ ${TB}${CB}Stopping and removing containers${CN} ..."
	@docker-compose down -v
	@docker-compose kill
	@docker-compose rm -vf || true
	sleep 5
	@docker-compose rm -vf
	@echo "============ Done!"