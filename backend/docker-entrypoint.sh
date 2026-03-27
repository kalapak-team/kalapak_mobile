#!/bin/sh

# បង្កើតតែ Config Cache បានហើយ
php artisan config:cache

# រត់ Migration — drop & recreate all tables then seed (--force for production)
echo "Running migrations..."
php artisan migrate:fresh --seed --force

# ចាប់ផ្ដើម Server
echo "Starting Laravel on Port 8000..."
exec php artisan serve --host=0.0.0.0 --port=8000
