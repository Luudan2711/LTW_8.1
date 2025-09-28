#!/bin/bash

# Build script for Docker deployment

echo "Building Email List Application Docker image..."

# Ensure we're in the right directory
cd "$(dirname "$0")"

# Check if WAR file exists
if [ ! -f "ch08_ex1_email.war" ]; then
    echo "Error: ch08_ex1_email.war not found!"
    echo "Please build the application first."
    exit 1
fi

echo "Found WAR file: ch08_ex1_email.war"
ls -la ch08_ex1_email.war

# Build Docker image
echo "Building Docker image..."
docker build -t email-list-app:latest .

if [ $? -eq 0 ]; then
    echo "Docker image built successfully!"
    echo "To run: docker run -p 8080:8080 email-list-app:latest"
else
    echo "Docker build failed!"
    exit 1
fi