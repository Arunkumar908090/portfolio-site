# Use the official Nginx base image
FROM nginx:latest  

# Copy your website files into the Nginx default directory
COPY ./html /usr/share/nginx/html

