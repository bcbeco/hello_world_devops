FROM node:18-alpine

WORKDIR /app

# Először csak a package fájlokat
COPY package*.json ./

# Tiszta npm cache és telepítés
RUN npm cache clean --force
RUN npm install --legacy-peer-deps

# Most másold a többi fájlt
COPY . .

EXPOSE 3000

ENV CHOKIDAR_USEPOLLING=true
ENV WATCHPACK_POLLING=true

CMD ["npm", "start"]
