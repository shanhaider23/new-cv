.PHONY: help build up down restart logs clean rebuild status dev dev-down dev-restart dev-logs

# Default target
help:
	@echo "Available commands:"
	@echo ""
	@echo "Production Commands:"
	@echo "  make build     - Build the Docker image"
	@echo "  make up        - Start the application (build if needed)"
	@echo "  make down      - Stop and remove containers"
	@echo "  make restart   - Restart the application"
	@echo "  make logs      - Show application logs"
	@echo "  make clean     - Remove containers, networks, and images"
	@echo "  make rebuild   - Clean rebuild (down, clean, build, up)"
	@echo "  make status    - Show running containers"
	@echo ""
	@echo "Development Commands (Hot Reloading):"
	@echo "  make dev       - Start development server with hot reloading"
	@echo "  make dev-down  - Stop development server"
	@echo "  make dev-restart - Restart development server"
	@echo "  make dev-logs  - Show development server logs"

# Build the Docker image
build:
	@echo "Building Docker image..."
	docker-compose build

# Start the application
up:
	@echo "Starting the CV application..."
	docker-compose up -d
	@echo "Application is running at http://localhost:8080"

# Stop the application
down:
	@echo "Stopping the application..."
	docker-compose down

# Restart the application
restart: down up

# Show logs
logs:
	docker-compose logs -f

# Clean up everything
clean:
	@echo "Cleaning up containers, networks, and images..."
	docker-compose down --rmi all --volumes --remove-orphans
	docker system prune -f

# Complete rebuild
rebuild: down clean build up

# Show status
status:
	@echo "Container status:"
	docker-compose ps
	@echo "\nDocker images:"
	docker images | grep new-cv

# Development Commands
# Start development server with hot reloading
dev:
	@echo "Starting development server with hot reloading..."
	docker-compose up -d cv-dev
	@echo "Development server is running at http://localhost:8080"
	@echo "Code changes will be automatically reflected!"

# Stop development server
dev-down:
	@echo "Stopping development server..."
	docker-compose stop cv-dev
	docker-compose rm -f cv-dev

# Restart development server
dev-restart: dev-down dev

# Show development server logs
dev-logs:
	docker-compose logs -f cv-dev