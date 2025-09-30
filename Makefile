.PHONY: help build up down restart logs clean rebuild status dev dev-down dev-restart dev-logs build-dist

# Default target
help:
	@echo "Available commands:"
	@echo ""
	@echo "Production Commands:"
	@echo "  make build     - Build the Docker image"
	@echo "  make up        - Start the application (accessible at http://localhost:8080)"
	@echo "  make down      - Stop and remove containers"
	@echo "  make restart   - Restart the application"
	@echo "  make logs      - Show application logs"
	@echo "  make clean     - Remove containers, networks, and images"
	@echo "  make rebuild   - Clean rebuild (down, clean, build, up)"
	@echo "  make status    - Show running containers"
	@echo "  make build-dist - Build and extract dist folder to local machine"
	@echo ""
	@echo "Development Commands (Hot Reloading):"
	@echo "  make dev       - Start development server (accessible at http://localhost:3000)"
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
	docker-compose up -d cv-app
	@echo "Production application is running at http://localhost:8080"

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
	@echo "Development server is running at http://localhost:3000"
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

# Build production and extract dist folder to local machine
build-dist:
	@echo "Building production version and extracting dist folder..."
	@echo "Step 1: Building Docker image with latest code..."
	docker-compose build cv-app
	@echo "Step 2: Removing any existing temp container..."
	-docker rm -f temp-cv-container 2>/dev/null || true
	@echo "Step 3: Creating temporary container..."
	docker create --name temp-cv-container new-cv-cv-app:latest
	@echo "Step 4: Removing existing dist folder..."
	-rm -rf ./dist 2>/dev/null || true
	@echo "Step 5: Copying dist folder from container to local machine..."
	docker cp temp-cv-container:/usr/share/nginx/html ./dist
	@echo "Step 6: Cleaning up temporary container..."
	docker rm temp-cv-container
	@echo "✅ Dist folder created successfully!"
	@echo "Your production files are now in ./dist/"