# Use the official NGINX image
FROM nginx:alpine

# Add metadata
LABEL maintainer="Ranvijay Singh" \
      version="1.0" \
      description="NGINX static website"

# Set the working directory
WORKDIR /app     

# Copy website files to the NGINX web root
COPY index.html .
ADD styles.css .

# Copy NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]