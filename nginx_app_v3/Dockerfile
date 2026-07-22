# -------------------------
# Base Image
# -------------------------
FROM nginx:alpine

# -------------------------
# Deprecated (For Learning)
# -------------------------
MAINTAINER Ranvijay Singh

# -------------------------
# Build Arguments
# -------------------------
ARG APP_VERSION=1.0
ARG APP_ENV=development

# -------------------------
# Metadata
# -------------------------
LABEL maintainer="Ranvijay Singh" \
      version="${APP_VERSION}" \
      description="NGINX Static Website"

# -------------------------
# Change Default Shell
# -------------------------
SHELL ["/bin/sh", "-c"]

# -------------------------
# Install Packages
# -------------------------
RUN apk update && \
    apk add --no-cache curl && \
    mkdir -p /app/assets && \
    mkdir -p /app/logs

# -------------------------
# Working Directory
# -------------------------
WORKDIR /app

# -------------------------
# Copy Files
# -------------------------
COPY index.html .
COPY styles.css .
COPY image_1.png /app/assets/

# -------------------------
# Environment Variables
# -------------------------
ENV SPRING_PROFILES_ACTIVE=${APP_ENV}
ENV APP_VERSION=${APP_VERSION}

# -------------------------
# Copy Nginx Config
# -------------------------
COPY nginx.conf /etc/nginx/nginx.conf

# -------------------------
# Persistent Storage
# -------------------------
VOLUME ["/app/logs"]

# -------------------------
# Health Check
# -------------------------
HEALTHCHECK --interval=30s \
            --timeout=5s \
            --start-period=10s \
            --retries=3 \
CMD curl -f http://localhost/ || exit 1

# -------------------------
# Stop Signal
# -------------------------
STOPSIGNAL SIGQUIT

# -------------------------
# Expose Port
# -------------------------
EXPOSE 80

# -------------------------
# Run as nginx User
# -------------------------
# USER nginx

# -------------------------
# Start Nginx
# -------------------------
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]

# -------------------------
# ONBUILD Trigger
# -------------------------
ONBUILD COPY extra.conf /etc/nginx/conf.d/