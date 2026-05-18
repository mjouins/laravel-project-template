#!/bin/sh

until php -r "
try {
  new PDO(
    'mysql:host=' . getenv('DB_HOST') .
    ';port=' . getenv('DB_PORT') .
    ';dbname=' . getenv('DB_DATABASE'),
    getenv('DB_USERNAME'),
    getenv('DB_PASSWORD')
  );
  echo 'Database ready\n';
  exit(0);
} catch (Exception \$e) {
  exit(1);
}
"; do
  echo "Waiting for database..."
  sleep 2
done

php artisan migrate --force

php artisan config:clear
php artisan cache:clear
php artisan config:cache
php artisan route:cache

exec php-fpm
