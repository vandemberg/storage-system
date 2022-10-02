rails=docker-compose exec web rails

setup:
	${rails} db:create
	${rails} db:migrate

reset:
	${rails} db:drop
	${rails} db:create
	${rails} db:migrate

test:
	docker-compose exec web rspec $(path)

bash:
	${rails} c
