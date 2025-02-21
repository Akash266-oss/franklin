# Use the latest Nginx image as the base
FROM nginx:latest

# Copy the built application files from the 'build' directory to the Nginx HTML folder
COPY build/ /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80
