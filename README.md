# Uday Dahiya - Personal Website

Built with [Hugo](https://gohugo.io/) and the [Hugo Apéro](https://hugo-apero.netlify.app/) theme.

**Live at**: https://udaydahiya.org

## Local Development

### Prerequisites
- [Hugo](https://gohugo.io/installation/) (extended version)
- Git

### Setup

```bash
git clone --recurse-submodules https://github.com/YOUR_USERNAME/udaydahiya.git
cd udaydahiya
hugo server
```

Visit `http://localhost:1313` in your browser.

### Building

```bash
hugo --minify
```

This creates the static site in the `public/` directory.

## Deployment

The site is automatically deployed to GitHub Pages via GitHub Actions whenever you push to the `main` branch.

See [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed setup instructions.

## Content Structure

- `/content/` - All site content (pages, projects, etc.)
- `/static/` - Static files (images, favicon, etc.)
- `/config.toml` - Site configuration
- `/.github/workflows/` - GitHub Actions deployment workflow
- `/themes/hugo-apero/` - Hugo theme (git submodule)

## Quick Edits

### Add a New Project
Create a new folder in `/content/project/`:

```bash
mkdir -p content/project/my-project
cat > content/project/my-project/index.md << 'EOF'
---
title: "Project Title"
subtitle: "Short description"
excerpt: "Longer description"
date: 2024-03-11
author: "Uday Dahiya"
draft: false
tags:
  - tag1
  - tag2
categories:
  - Category
links:
- icon: github
  icon_pack: fab
  name: View on GitHub
  url: https://github.com/...
---

Project content here...
EOF
```

Then commit and push:
```bash
git add .
git commit -m "Add new project: My Project"
git push
```

## License

© 2025 Uday Dahiya

---

**Hugo Apéro Theme**: [GitHub](https://github.com/hugo-apero/hugo-apero) | [License](https://github.com/hugo-apero/hugo-apero/blob/main/LICENSE.md)
