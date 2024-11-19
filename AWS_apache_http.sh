#!/bin/bash

# Update package list and install Apache2
sudo apt update -y
sudo apt install apache2 -y

# Create a simple HTML page
sudo echo "<h1>Server Details</h1><p><strong>Hostname:</strong> $(hostname)</p><p><strong>IP Address:</strong> $(hostname -I | cut -d' ' -f1)</p>" > /var/www/html/index.html

# Restart Apache2 to apply changes
sudo systemctl restart apache2
