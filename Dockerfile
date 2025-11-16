# Use the Nginx image as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the HTML and CSS files into the Nginx web root
COPY index.html index.html
COPY styles.css styles.css

# Expose the port Nginx is listening on (default HTTP port)
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]