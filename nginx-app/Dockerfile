# Use the official NGINX image
FROM nginx:alpine

# Copy website files to the NGINX web root
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]