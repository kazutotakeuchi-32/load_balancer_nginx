init: 
	@make build
	@make up
build:
	docker-compose build
up:
	docker-compose up -d
down: 
	docker-compose down
logs:
	docker-compose logs  -f
app1:
	docker-compose exec app1 bin/bash
app2:
	docker-compose exec app2 bin/bash
app3:
	docker-compose exec app3 bin/bash
app4:
	docker-compose exec app4 bin/bash

