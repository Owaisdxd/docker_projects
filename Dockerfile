# Use Ubuntu 20.04 as the base image for the Docker container
FROM ubuntu:20.04

# Set environment variable to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list, install Apache and its utilities, and clean up temporary files
RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the local index.html file into the container's web root directory
# This file will be served by the Apache HTTP server
COPY index.html /var/www/html/

# Expose port 80 on the container
# This is the default port for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
# The -D FOREGROUND flag ensures that Apache runs in the foreground
# and keeps the container running
CMD ["apache2ctl", "-D", "FOREGROUND"]
