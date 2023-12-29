#!/bin/bash

# Update packages
sudo apt update -y

# Install Apache
sudo apt install -y apache2

# Start Apache
sudo systemctl start apache2

# Enable Apache to start on boot
sudo systemctl enable apache2

# Create a simple index.html file
echo "Hello World from $(hostname -f)" | sudo tee /var/www/html/index.html
