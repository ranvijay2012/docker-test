# ==========================
# Stage 1 - Build
# ==========================
FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build



# ==========================
# Stage 2 - NGINX
# ==========================
FROM nginx:alpine

LABEL maintainer="Ranvijay Singh"

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK CMD wget --spider http://localhost || exit 1

STOPSIGNAL SIGQUIT

CMD ["nginx","-g","daemon off;"]