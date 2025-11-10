#!/bin/bash
sudo cp /home/ubuntu/SimpleDeployApp/index.html /var/www/html/index.html
sudo systemctl restart nginx || true
echo "Deployed new index.html successfully!"

