prepare:
	cp infra/.env.example infra/.env

start-infra:
	cd  infra &&\
	docker compose --profile hyperion up -d
stop-infra:
	cd infra && docker compose --profile hyperion down -v


reset-infra: stop-infra
	rm -rf ~/d && mkdir -p ~/d/rabbitmq ~/d/redis


