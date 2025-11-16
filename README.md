# Webhook App for n8n Integration

## Overview

This is a simple web application designed to integrate with n8n, a workflow automation tool. The application serves a basic HTML page with CSS styling.

## Code Structure

- `index.html`: The main HTML file for the web application.
- `styles.css`: Contains CSS styles for the web application.
- `Dockerfile`: Used to build a Docker image for the application.
- `docker-compose.yml`: Defines the services and their configurations for the application.

## Setup Instructions

### Prerequisites

- Docker installed on your system.
- Docker Compose installed on your system.

### Running the Application

1. Clone the repository to your local machine.
2. Navigate to the project directory in your terminal.
3. Run the following command to build and start the Docker container:
```bash
docker-compose up -d
```
4. Access the web application by visiting `http://localhost:8080` in your web browser.

### Stopping the Application

To stop the Docker container, run the following command:
```bash
docker-compose down
```

## Docker Configuration

The `Dockerfile` uses the Nginx image as the base and is configured to serve the `index.html` and `styles.css` files. The `docker-compose.yml` file maps port 8080 on the host machine to port 80 inside the container.

## Customization

You can customize the `index.html` and `styles.css` files to suit your needs. After making changes, rebuild the Docker image by running `docker-compose up -d --build`.
