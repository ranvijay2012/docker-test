# Use the official NGINX image
FROM nginx:alpine

# -----------------------
# Build-time Arguments
# -----------------------
ARG APP_VERSION=1.0
ARG APP_ENV=development

# -----------------------
# Metadata
# -----------------------
LABEL maintainer="Ranvijay Singh" \
      version="${APP_VERSION}" \
      description="NGINX static website"

# -----------------------
# Install packages
# -----------------------
RUN apk update && \
    apk add --no-cache curl && \
    mkdir -p /app/assets && \
    mkdir -p /app/logs && \
    chown -R nginx:nginx /app

# -----------------------
# Working Directory
# -----------------------
WORKDIR /app

# -----------------------
# Copy Website Files
# -----------------------
COPY index.html .
COPY styles.css .
COPY image_1.png /app/assets/

# -----------------------
# Environment Variables
# -----------------------
ENV SPRING_PROFILES_ACTIVE=${APP_ENV}
ENV APP_VERSION=${APP_VERSION}

# -----------------------
# Copy NGINX Configuration
# -----------------------
COPY nginx.conf /etc/nginx/nginx.conf

# -----------------------
# Persistent Volume
# -----------------------
VOLUME ["/app/logs"]

# -----------------------
# Expose Port
# -----------------------
EXPOSE 80

# -----------------------
# Run as Non-Root User
# -----------------------
USER nginx

# -----------------------
# Start NGINX
# -----------------------
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]