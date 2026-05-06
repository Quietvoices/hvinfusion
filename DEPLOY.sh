#!/bin/bash
# ═══════════════════════════════════════════════════════════
# HV Infusion & Biologics — GitHub Pages Deploy Script
# Run this from inside the hvinfusion folder
# ═══════════════════════════════════════════════════════════

echo ""
echo "HV Infusion & Biologics — GitHub Pages Deployment"
echo "══════════════════════════════════════════════════"
echo ""

# Ask for GitHub username
read -p "Enter your GitHub username: " GITHUB_USER

REPO="hvinfusion"
REMOTE="https://github.com/${GITHUB_USER}/${REPO}.git"

echo ""
echo "Initializing git repository..."
git init
git add .
git commit -m "Initial website launch — HV Infusion & Biologics"

echo ""
echo "Connecting to GitHub..."
git branch -M main
git remote add origin "$REMOTE"

echo ""
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "✓ Done! Now go to:"
echo "  https://github.com/${GITHUB_USER}/${REPO}/settings/pages"
echo "  → Set Source to: Deploy from branch"
echo "  → Branch: main  /  Folder: / (root)"
echo "  → Click Save"
echo ""
echo "Your site will be live at:"
echo "  https://${GITHUB_USER}.github.io/${REPO}/"
echo ""
