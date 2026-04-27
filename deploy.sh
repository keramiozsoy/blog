#!/bin/bash

# Check if version argument is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a version number (e.g., ./deploy.sh v1.0.1)"
    exit 1
fi

VERSION=$1

# Ensure version starts with 'v'
if [[ ! $VERSION == v* ]]; then
    echo "Error: Version must start with 'v' (e.g., v1.0.1)"
    exit 1
fi

echo "🚀 Starting Remote Deployment for version $VERSION..."

# 1. Add and Commit
git add .
read -p "Enter commit message: " MESSAGE
if [ -z "$MESSAGE" ]; then
    MESSAGE="Deploy version $VERSION"
fi

git commit -m "$MESSAGE"

# 2. Push Main
echo "Pushing changes to main branch..."
git push origin main

# 3. Create and Push Tag
echo "Creating and pushing tag $VERSION..."
git tag $VERSION
git push origin $VERSION

echo "✅ Deployment triggered! Check GitHub Actions for status."
