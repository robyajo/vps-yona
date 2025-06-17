project-root/
├── docker-compose.yml
├── .env
├── docker/
│   ├── php/
│   │   └── Dockerfile
│   ├── nginx/
│   │   ├── Dockerfile (optional)
│   │   └── sites/
│   │       ├── laravel.conf
│   │       └── nextjs.conf
├── src/
│   ├── apilaravel/        # Laravel API project
│   └── nextjsapp/         # Next.js frontend app





Untuk menghapus semua Docker image di sistem kamu, kamu bisa jalankan perintah ini di terminal (baik di Linux, macOS, atau WSL):

docker rmi -f $(docker images -q)

Penjelasan:

    docker images -q → mengambil semua ID image.

    docker rmi -f → menghapus image secara paksa (force), walaupun sedang digunakan container.

🔁 Jika kamu juga ingin:

    Hapus semua container:

docker rm -f $(docker ps -aq)

Hapus semua volume:

docker volume rm $(docker volume ls -q)

Hapus semua network (kecuali default):

    docker network rm $(docker network ls | grep "bridge\|host\|none" -v | awk '{print $1}')

🧹 Atau lebih simpel (bersih total):

docker system prune -a --volumes

    Ini akan menghapus semua: container, image, volume, dan network yang tidak digunakan.