#!/bin/bash

# GitHub Pages Setup Script for udaydahiya.org

echo "🚀 Setting up GitHub Pages deployment..."
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: Hugo Apéro personal website for udaydahiya.org"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "📝 Next steps to complete deployment:"
echo ""
echo "1️⃣  Create a GitHub repository:"
echo "   - Go to https://github.com/new"
echo "   - Name: udaydahiya (or your preferred name)"
echo "   - Make it PUBLIC"
echo ""
echo "2️⃣  Add GitHub remote and push:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/udaydahiya.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3️⃣  Enable GitHub Pages:"
echo "   - Settings → Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main, Folder: / (root)"
echo ""
echo "4️⃣  Configure Cloudflare DNS:"
echo "   - Add CNAME record pointing to YOUR_USERNAME.github.io"
echo ""
echo "5️⃣  Add custom domain in GitHub:"
echo "   - Settings → Pages → Custom domain"
echo "   - Enter: udaydahiya.org"
echo ""
echo "📖 Full instructions in: DEPLOYMENT.md"
echo ""
echo "✨ Your site will be live at https://udaydahiya.org"
