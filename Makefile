build:
	docker-compose stop;docker rm 74apache; docker rm mysql8;docker-compose build --no-cache

up:
	docker-compose up -d

up-non-daemon:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose stop && docker-compose start


shell-web:
	docker exec -ti 74apache /bin/sh

shell-db:
	docker exec -ti pz01 /bin/sh

log-web:
	docker-compose logs web

log-db:
	docker-compose logs db
