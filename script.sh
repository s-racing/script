#!/bin/bash

# Define the branch names
main_branch="main"
feature_branch="n1"

# Merge the feature branch into the main branch
git checkout $main_branch
git merge $feature_branch

# Check if the branch has been merged
is_merged=$(git branch --merged | grep "$feature_branch")

# Check if the branch has not been merged
if [ -z "$is_merged" ]; then
  echo "The branch '$feature_branch' has not been merged."
else
  # Reflect the code changes in the codebase
  cd /var/www/html
  sudo rm -f index.html
  cd /var/lib/jenkins/workspace/new
  sudo cp -R * /var/www/html

  echo "Code changes from branch '$feature_branch' have been reflected in the codebase."
fi
