# ----------------------- #
# Setup                   #
# ----------------------- #
.EXPORT_ALL_VARIABLES:

include .env

# ----------------------- #
# Variables               #
# ----------------------- #
.PHONY: build start stop restart docker-clean

.DEFAULT: help

DOCKER_COMPOSE = docker compose
DOCKER_COMPOSE_FILE = docker-compose.yml

# ----------------------- #
# Docker                  #
# ----------------------- #

build:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build $(a)

start:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d $(a)

stop:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop $(a)

restart: stop start

docker-clean:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down --remove-orphans