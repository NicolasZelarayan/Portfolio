FROM node:14-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm cache clean --force  # Limpia la caché de Node Modules
RUN npm run dev


EXPOSE 5173

