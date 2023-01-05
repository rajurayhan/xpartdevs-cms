bash:
	docker-compose exec xpartdevs-app bash

log:
	docker-compose exec xpartdevs-app bash -c "tail -f storage/logs/laravel.log"

migrate:
	docker-compose exec xpartdevs-app bash -c "php artisan migrate"

migrate-fresh:
	docker-compose exec xpartdevs-app bash -c "php artisan migrate:fresh"

migrate-rollback:
	docker-compose exec xpartdevs-app bash -c "php artisan migrate:rollback"

rabbitmq:
	docker-compose exec xpartdevs-app bash -c "php artisan rabbitmq:consume rabbitmq"

seed:
	docker-compose exec xpartdevs-app bash -c "php artisan db:seed"

seed-test:
	docker-compose exec xpartdevs-app bash -c "php artisan db:seed --class=TestSeeder"

start:
	docker-compose up

stop:
	docker-compose stop

websocket:
	docker-compose exec xpartdevs-app bash -c "php artisan websocket:serve"

build:
	docker-compose build --no-cache
