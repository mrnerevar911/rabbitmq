up: docker-up
down: docker-down
restart: docker-restart
init: docker-down-clear docker-pull docker-up

docker-up:
	docker-compose up --detach --remove-orphans

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down --volumes --remove-orphans

docker-restart:
	docker-compose restart

docker-pull:
	docker-compose pull
