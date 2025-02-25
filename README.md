## About This Repo
This project is to try worker frankenphp in docker. Running with laravel 12 php 8.2

## How to use
- change directory build -> dockerfile in docker-compose.yml to Dockerfile first
- run docker compose build
- after success change to worker.dockerfile
- run docker compose build
- run docker compose up -d
- the project running on port localhost:8001
- to check if frankenphp-worker work, localhost:8001/info