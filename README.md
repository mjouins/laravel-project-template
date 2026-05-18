# Run the Docker container

This automatically starts the server in development mode on http://localhost:8000

```bash
docker compose -f docker-compose.dev.yml up --build
```

# To run the server in production mode, use the following command:

This will start the server in production mode on http://localhost:8000

```bash
docker compose -f docker-compose.prod.yml up -d --build
```
