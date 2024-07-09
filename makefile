GID := $(shell id -g)
UID := $(shell id -u)

DOCKER_COMPOSE = docker compose -f docker/docker-compose.yaml

export GID
export UID

download-videos:
	wget -O ./videos/train-example.mp4 https://allread-public-technical-evaluation.s3.eu-west-3.amazonaws.com/train-example.mp4

up: 
	@${DOCKER_COMPOSE} up -d

down:
	@${DOCKER_COMPOSE} down --remove-orphans

