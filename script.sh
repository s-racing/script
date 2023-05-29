#!/bin/bash

# Define the name of the feature branch you want to merge
feature_branch="a"

# Change directory to the desired location
cd /var/www/html

# Remove the existing index.html file
sudo rm -f index.html

# Change directory to the Jenkins workspace
cd /var/lib/jenkins/workspace/new

# Copy the files to the /var/www/html directory
sudo cp -R * /var/www/html

# Perform the manual merge
echo "Please manually merge the feature branch '$feature_branch' into the main branch."



# Change directory to the Jenkins workspace
cd /var/lib/jenkins/workspace/new

# Copy the files to the /var/www/html directory
sudo cp -R * /var/www/html


# After merge, reflect the changes in the copied files
cd /var/www/html

# Add any additional commands to reflect the changes
# ...

echo "Post-merge script executed successfully!"
