UID=$(shell id -u)
GID=$(shell id -g)
FILE=docker-compose.yml
CONTAINER=terraria-vanilla

bash: ## enter inside container bash
	docker-compose -f ${FILE} exec --user=${UID} ${CONTAINER} sh

bash-root: ## enter inside container bash as root
	docker-compose -f ${FILE} exec ${CONTAINER} sh

build: ## build dockers
	docker-compose -f ${FILE} build

up: ## up -d dockers
	docker-compose -f ${FILE} up -d

down: ## down dockers
	docker-compose -f ${FILE} down

start: ## start server
	docker-compose -f ${FILE} exec ${CONTAINER} sh -c "sh /server/script/start.sh"

help: ## Display this help message
	@cat $(MAKEFILE_LIST) | grep -e "^[a-zA-Z_\-]*: *.*## *" | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'