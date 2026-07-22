# Use the official NGINX image
FROM nginx:alpine

# Add metadata
LABEL maintainer="Ranvijay Singh" \
      version="1.0" \
      description="NGINX static website"

      # Install curl and create a directory
RUN apk update && \
    apk add --no-cache curl && \
    mkdir -p /app/assets

# Set the working directory
WORKDIR /app     

# Copy website files to the NGINX web root
COPY index.html .
ADD styles.css .
ADD image_1.png /app/assets

ENV SPRING_PROFILES_ACTIVE=development
ENV APP_VERSION=1.0

# Copy NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start NGINX
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]