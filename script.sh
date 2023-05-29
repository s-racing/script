#!/bin/bash

# Define the name of the feature branch you want to monitor
feature_branch="a"

# Check if the feature branch is merged into the main branch
if ! git branch --merged main | grep -q "$feature_branch"; then
  echo "Feature branch '$feature_branch' is not merged into main branch."
  
  # Perform any necessary actions to manually merge the feature branch into the main branch
  # ...


  # Perform any necessary actions to manually merge the feature branch into the main branch
  git checkout main
  git merge "$feature_branch"
  # Resolve merge conflicts if any
  # ...

  # After manually merging the feature branch into the main branch, proceed with the rest of the script

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
