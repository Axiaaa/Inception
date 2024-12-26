all : build up 

start : up

stop : down

build :
	mkdir -p /home/lcamerly/data/mariadb
	mkdir -p /home/lcamerly/data/nginx
	docker-compose build 

up :
	docker-compose up -d

down :
	docker-compose down

logs :
	docker-compose logs -f

clean :
	docker-compose down
	docker-compose rm -f
	docker rmi -f $(shell docker images -q)

.PHONY: all build up down logs clean
