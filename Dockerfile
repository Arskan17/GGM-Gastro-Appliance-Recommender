# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy index.html into the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]