#!/bin/bash

set -e  # Exit on error

# Script to initialize the main branch and configure remote for chat-clinic-hub

echo "Initializing main branch for chat-clinic-hub repository..."

# Configure the remote to point to chat-clinic-hub
echo "Step 1: Configuring remote origin..."
if git remote get-url origin &>/dev/null; then
    echo "Removing existing remote origin..."
    git remote remove origin
fi
git remote add origin https://github.com/joaotiheci/chat-clinic-hub.git

# Rename current branch to main
echo "Step 2: Renaming branch to main..."
git branch -M main

# Push to origin main
echo "Step 3: Pushing to origin main..."
git push -u origin main

echo "✓ Main branch initialized and pushed to chat-clinic-hub successfully!"
