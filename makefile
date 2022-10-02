rails=docker-compose exec web rails

setup:
	cp .env.example .env
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

run:
	docker-compose up
