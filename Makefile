APP_CONTAINER_NAME := php



up: ## Start all containers
	docker-compose up -d   --build

restart: ##Restart all container
	docker-compose restart

install: up ## Install application dependencies into application container
	docker-compose exec "$(APP_CONTAINER_NAME)" composer install --no-interaction --ansi --no-suggest
	docker-compose exec "$(APP_CONTAINER_NAME)" chown -R www-data:www-data /var/www/app

init: install  ## Make full application initialization
    #wait db
	sleep 25
	docker-compose exec "$(APP_CONTAINER_NAME)" php artisan migrate --force --no-interaction -vvv


