#!/bin/bash

# Update system
sudo dnf update -y

# Install nginx
sudo dnf install nginx -y

# Start nginx
sudo systemctl start nginx

# Enable nginx on boot
sudo systemctl enable nginx