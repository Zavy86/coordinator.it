#
# Make file
#
# for development: make dev
# for production: make prd
#
dev:
	docker compose -f docker/docker-compose-dev.yml -p coordinator-it-dev down && \
	docker compose -f docker/docker-compose-dev.yml -p coordinator-it-dev rm -f && \
	docker compose -f docker/docker-compose-dev.yml -p coordinator-it-dev build --no-cache && \
	docker compose -f docker/docker-compose-dev.yml -p coordinator-it-dev up -d --remove-orphans && \
	docker image prune -f --filter="dangling=true"

prd:
	docker compose -f docker/docker-compose-prd.yml -p coordinator-it down && \
	docker compose -f docker/docker-compose-prd.yml -p coordinator-it rm -f && \
	docker compose -f docker/docker-compose-prd.yml -p coordinator-it build --no-cache && \
	docker compose -f docker/docker-compose-prd.yml -p coordinator-it up -d --remove-orphans && \
	docker image prune -f --filter="dangling=true"
