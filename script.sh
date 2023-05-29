#!/bin/bash

# Define the name of the feature branch you want to monitor
feature_branch="b"

# Check if the feature branch is merged into the main branch
if ! git branch --merged main | grep -q "$feature_branch"; then
  echo "Feature branch '$feature_branch' is not merged into main branch."

  # Prompt user to perform the manual merge
  echo "Please manually merge the feature branch '$feature_branch' into the main branch."
  echo "Press Enter to continue once the merge is complete..."
  read -r

  # After manual merge, proceed with the rest of the script

  # Change directory to the desired location
  cd /var/www/html

  # Remove the existing index.html file
  sudo rm -f index.html

  # Change directory to the Jenkins workspace
  cd /var/lib/jenkins/workspace/new

  # Copy the files to the /var/www/html directory
  sudo cp -R * /var/www/html

  # Add any additional commands you want to execute after the merge
  # ...

  echo "Post-merge script executed successfully!"
else
  echo "Feature branch '$feature_branch' is already merged into the main branch."
fi
