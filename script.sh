#!/bin/bash

# Define the name of the feature branch you want to monitor
feature_branch="n2"

# Check if the merge was made from the specified feature branch to the main branch
if [[ "$GIT_BRANCH" == "refs/heads/main" && "$GIT_HEAD_REF" == "refs/heads/$feature_branch" ]]; then
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
fi
