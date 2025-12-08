# Az image elérhető Docker Hub-on:

Docker Hub link: https://hub.docker.com/r/bcbeco/hello_world_devops

# Image letöltése Docker Hub-ról

docker pull bcbeco/hello_world_devops:latest

# Build

docker build -t hello_world_devops:v1 .

# Futtatás

docker run -p 8080:3000 bcbeco/hello_world_devops:latest

## CI/CD

A projekt GitHub Actions-t használ CI/CD-hez:
- Minden push a "main" branchre automatikusan:
  - Buildeli a Docker image-et
  - Pusholja Docker Hub-ra "latest" és commit SHA tag-ekkel
  
A workflow fájl: ".github/workflows/docker-build.yml"
