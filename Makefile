prepare:
	cp infra/.env.example infra/.env

start-infra:
	cd  infra &&\
	docker compose --profile hyperion up -d
