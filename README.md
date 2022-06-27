<p align="center">
    <a href="https://laravel.com" target="_blank">
        <img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400">
    </a>
</p>

## Documenter Postman :

    - https://documenter.getpostman.com/view/21632410/UzBqq5mp

## Instalation

### Prepare dependencies
    - composer install
    - cp .env.example .env
    - cp .env.testing.example .env.testing

### Change Database Config
    Change Database configuration in .env and .env.testing 

### Generate and Migration
    - php artisan key:generate
    - php artisan migrate --seed
    - php artisan passport:install

### Run Test and Development Server
    - php artisan test
    - php artisan serve