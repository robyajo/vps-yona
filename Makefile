# Nama Project
PROJECT_NAME = vps-yona

# Jalankan semua container dengan build
up:
	docker compose up -d --build

# Hentikan dan hapus container
down:
	docker compose down

# Stop dan rebuild semua service
restart:
	docker compose down && docker compose up -d --build

# Tampilkan log real-time
logs:
	docker compose logs -f

# Masuk ke container PHP (Laravel)
php:
	docker exec -it php bash

# Masuk ke container Node.js (Next.js)
node:
	docker exec -it node bash

# Masuk ke container Nginx
nginx:
	docker exec -it nginx bash

# Masuk ke container MySQL
mysql:
	docker exec -it mysql bash

# Buka phpMyAdmin di browser (khusus Mac, gunakan "start" di Windows)
phpmyadmin:
	open http://localhost:8081

# Inisialisasi Laravel (composer install, generate key, cache config)
laravel-init:
	docker exec -it php bash -c "cd /var/www/apilaravel && composer install && cp .env.example .env && php artisan key:generate && php artisan config:cache"

# Perbaiki permission Laravel (storage & bootstrap/cache)
laravel-perms:
	sudo chown -R $$(whoami):$$(whoami) src/apilaravel
	sudo chmod -R 775 src/apilaravel/storage src/apilaravel/bootstrap/cache

# Lihat semua container & statusnya
ps:
	docker ps -a

# Pembersihan total: stop semua, hapus image, volume, network
clean:
	docker compose down -v --remove-orphans
	docker system prune -a --volumes -f

# Rebuild dari awal + bersihkan volume
rebuild:
	docker compose down -v && docker compose up --build
