# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory in the container to the Nginx web root
WORKDIR /usr/share/nginx/html

# Copy the HTML and CSS files into the Nginx web root
COPY index.html index.html
COPY styles.css styles.css

# Expose the default HTTP port (80) that Nginx is listening on
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]