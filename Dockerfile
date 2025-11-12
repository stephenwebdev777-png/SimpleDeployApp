# Use official Nginx image
FROM nginx:latest

# Copy only website files
COPY website/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80
