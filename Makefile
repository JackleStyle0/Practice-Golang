postgres: 
	docker run --name postgres15 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -d postgres:15-alpine

createdb:
	docker exec -it postgres15 createdb --username=root --owner=root backbook

dropdb:
	docker exec -it postgres15 dropdb backbook

migrateup:
	goose postgres "user=root password=root host=localhost dbname=backbook sslmode=disable" -dir ./db/migration up

migratedown:
	goose postgres "user=root password=root host=localhost dbname=backbook sslmode=disable" -dir ./db/migration down

.PHONY: postgres, createdb, dropdb