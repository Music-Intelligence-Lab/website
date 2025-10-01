#!/bin/bash

# Deploy script for GitHub Pages
# This script commits and pushes changes to GitHub

echo "Deploying Music Intelligence Lab website to GitHub Pages..."

# Check if there are changes to commit
if [[ -z $(git status -s) ]]; then
    echo "No changes to commit."
    exit 0
fi

# Show status
echo ""
echo "Changes to be committed:"
git status -s
echo ""

# Ask for commit message
read -p "Enter commit message: " commit_message

if [[ -z "$commit_message" ]]; then
    echo "Error: Commit message cannot be empty."
    exit 1
fi

# Add all changes
git add .

# Commit changes
git commit -m "$commit_message"

# Push to GitHub
echo ""
echo "Pushing to GitHub..."
git push origin main

echo ""
echo "Deployment complete!"
echo "Your site will be available at: https://music-intelligence-lab.github.io/website/"
echo "Note: It may take a few minutes for changes to appear."
