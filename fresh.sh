#!/bin/bash

# GitHub repository URL
repo_url="https://github.com/sethr07/My_CV_Tex.git"

# Branch or tag name
branch="master"

# Files to pull
files=("cv.pdf" "cv_del.pdf")

# Destination directory for pulled files
destination_dir="/Users/rahulseth/Desktop/Resume"

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Set the preferred merge strategy
git config pull.rebase false

# Pull or clone the repository
if [ -d "$destination_dir/.git" ]; then
  # Repository already exists, pull the latest changes
  cd "$destination_dir"
  git pull --no-rebase origin "$branch"
else
  # Clone the repository
  git clone --depth 1 --branch "$branch" "$repo_url" "$destination_dir"
fi


