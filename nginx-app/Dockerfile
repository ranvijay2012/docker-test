# Use the official NGINX image
FROM nginx:alpine

# Add metadata
LABEL maintainer="Ranvijay Singh <ranvijay@example.com>" \
      version="1.0" \
      description="Simple NGINX web server serving a static website" \
      application="docker-nginx-demo" \
      environment="development"

# Copy website files to the NGINX web root
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
ADD styles.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]