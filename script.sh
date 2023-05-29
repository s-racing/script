#!/bin/bash
feature_branch="d"
cd /var/www/html
sudo rm -f index.html
cd /var/lib/jenkins/workspace/new
echo "Please manually merge the feature branch '$feature_branch' into the main branch"
sudo cp -R * /var/www/html

