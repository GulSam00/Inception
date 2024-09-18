all:
	docker-compose -f ./srcs/docker-compose.yaml up -d --build

up:
	docker-compose -f ./srcs/docker-compose.yaml up -d

down:
	docker-compose -f ./srcs/docker-compose.yaml down -v

fclean:
	docker system prune -af --volumes

.PHONY : all up down fclean