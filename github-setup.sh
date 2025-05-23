#!/bin/bash

# Initialize git repository
git init

git config user.name "0x-Dee-Bugger"
git config user.email "deebugger@0x4d2.com"

# Add all files
git add .

# Initial commit
git commit -m "Initial commit: 0x4d2 website"

# Create main branch (GitHub's default)
git branch -M main

# Add GitHub remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin git@github.com:0x44dd22/0x4d2-website.git

# Push to GitHub
GIT_SSH_COMMAND="ssh -i ~/.ssh/ed25519_dee_bugger" git push origin main

# Configure GitHub Pages
# After pushing:
# 1. Go to repository Settings
# 2. Navigate to Pages section
# 3. Select 'Deploy from a branch' as Source
# 4. Select 'main' branch and '/ (root)' folder
# 5. Click Save

# After GitHub Pages is enabled:
# 1. Go to repository Settings
# 2. Navigate to Pages section
# 3. In 'Custom domain' section, enter: 0x4d2.com
# 4. Click Save
# 5. Check 'Enforce HTTPS' if available

# Note: You'll need to configure your DNS settings at Namecheap:
# 1. Add A records pointing to GitHub Pages IPs:
#    185.199.108.153
#    185.199.109.153
#    185.199.110.153
#    185.199.111.153
# 2. Add CNAME record:
#    Host: www
#    Value: 0x44dd22.github.io
