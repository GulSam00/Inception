all:
	docker-compose -f ./srcs/docker-compose.yaml up -d --build

up:
	docker-compose -f ./srcs/docker-compose.yaml up -d

down:
	docker-compose -f ./srcs/docker-compose.yaml down -v

fclean:
	docker-compose -f ./srcs/docker-compose.yaml down -v
	docker system prune -af --volumes
	sudo rm -rf /home/sham/data/mariadb/*
	sudo rm -rf /home/sham/data/wordpress/*

.PHONY : all up down fclean