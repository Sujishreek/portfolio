#!/bin/bash

# Start the application service after installation
echo "Starting the application..."
sudo systemctl start my-application.service

# Run database migrations if needed (optional)
echo "Running database migrations..."
cd /path/to/your/app
npm run migrate  # For Node.js
# Or for Python apps:
# python3 manage.py migrate

# Set file permissions
echo "Setting file permissions..."
sudo chown -R user:user /path/to/your/app

# Optionally restart related services (e.g., Nginx, Apache)
echo "Restarting the web server..."
sudo systemctl restart nginx

# Optionally, run health checks
echo "Running health checks..."
curl http://localhost:3000/health  # Adjust URL based on your app's health check endpoint

echo "After install tasks completed."

