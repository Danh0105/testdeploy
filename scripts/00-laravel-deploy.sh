echo "Running composer"
composer global require hirak/prestissimo
composer install --no-dev --working-dir=/var/www/html

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache
echo "queue restart..."
php artisan queue:restart
echo "work work..."
php artisan queue:work --queue=emails