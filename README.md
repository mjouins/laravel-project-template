# Run the Docker container

```bash
docker compose up -d --build
```

# Enter container:

```bash
docker compose exec app bash
```

# Create Laravel app

```bash
composer create-project laravel/laravel .
```

# Install deps, generate app key, run migrations, and install frontend deps

```bash
composer install
php artisan key:generate
php artisan migrate
npm install
```

# Set permissions for storage and cache

```bash
chmod -R 777 storage bootstrap/cache
php artisan optimize:clear
```

# Run the development server

```bash
npm run dev -- --host
```
