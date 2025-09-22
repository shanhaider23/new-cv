# shanehaider.me

## Development Setup (Local)

### Project setup

```
yarn install
```

### Compiles and hot-reloads for development

```
yarn run serve
```

### Compiles and minifies for production

```
yarn run build
```

### Lints and fixes files

```
yarn run lint
```

## Docker Setup (Recommended)

### Prerequisites

-   Docker and Docker Compose installed
-   Make sure Docker is running

### Development Mode (Hot Reloading)

**Use this for active development - changes to your code will automatically rebuild!**

```bash
# Start development server with hot reloading
make dev

# View development logs
make dev-logs

# Stop development server
make dev-down
```

### Production Mode (Static Build)

**Use this for final testing or deployment**

```bash
# Start production build
make up

# Stop production build
make down
```

### Available Make Commands

**Development Commands (Hot Reloading):**

-   `make dev` - Start development server (code changes auto-rebuild)
-   `make dev-down` - Stop development server
-   `make dev-restart` - Restart development server
-   `make dev-logs` - Show development server logs

**Production Commands:**

-   `make build` - Build the Docker image
-   `make up` - Start production application
-   `make down` - Stop and remove containers
-   `make restart` - Restart the application
-   `make logs` - Show application logs
-   `make clean` - Remove containers, networks, and images
-   `make rebuild` - Complete clean rebuild
-   `make status` - Show running containers

### Quick Start for Development

```bash
# Show all commands
make help

# Start development with hot reloading
make dev
```

### Manual Docker Compose Commands

If you prefer using Docker Compose directly:

```bash
# Start the application
docker-compose up -d

# Stop the application
docker-compose down

# View logs
docker-compose logs -f

# Rebuild and start
docker-compose up --build -d
```

### Access the Application

Once running, the CV will be available at: http://localhost:8080
