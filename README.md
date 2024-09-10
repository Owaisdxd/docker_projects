# Dockerized HTML Website

This repository contains a Dockerfile and a basic HTML file to set up an Apache HTTP server inside a Docker container. The Docker container will serve a static HTML page using Apache.

## Project Overview

- **Dockerfile**: Configures an Ubuntu-based Docker image with Apache to serve the HTML file.
- **index.html**: A simple HTML file that will be served by the Apache server.

## Features

- **Dockerized Apache Server**: Runs an Apache HTTP server in a Docker container.
- **Static HTML Page**: Serves a static HTML page as the main content.

## Prerequisites

- Docker installed on your machine.

## Installation

### Build the Docker Image

To build the Docker image from the provided Dockerfile, run the following command:

```bash
docker build -t my-html-website .
### Dockerized HTML website!
docker run -p 8080:80 my-html-website
### Accessing the Website
http://localhost:8080
Contributing
Contributions are welcome! If you have suggestions or improvements:

Fork the repository.
Create a new branch for your feature or fix.
Commit your changes.
Push your branch to your fork.
Submit a pull request.
