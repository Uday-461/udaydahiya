# Deployment to GitHub Pages

## Setup Instructions

### 1. Create a GitHub Repository

Create a new repository for your website:
- Repository name: `udaydahiya` (or any name you prefer)
- Make it **public** (required for GitHub Pages free tier)
- Initialize with README

### 2. Push Your Site to GitHub

```bash
cd /Users/uday/code/personal-brand/website

# Initialize git (if not already done)
git init
git add .
git commit -m "Initial commit: Hugo Apéro personal website"

# Add remote and push to GitHub
git remote add origin https://github.com/YOUR_USERNAME/udaydahiya.git
git branch -M main
git push -u origin main
```

### 3. Enable GitHub Pages

In your GitHub repository:
1. Go to **Settings** → **Pages**
2. Under "Source", select **Deploy from a branch**
3. Select branch: **main**
4. Select folder: **/ (root)**
5. Click **Save**

GitHub Actions will automatically build and deploy your site.

### 4. Configure Custom Domain (Cloudflare DNS)

Once your site is deployed at `https://YOUR_USERNAME.github.io/udaydahiya`:

#### In GitHub:
1. Go to **Settings** → **Pages**
2. Under "Custom domain", enter: `udaydahiya.org`
3. Click **Save**
4. Check "Enforce HTTPS" (after DNS is configured)

#### In Cloudflare:
1. Go to your domain DNS settings
2. Add a **CNAME** record:
   - **Name**: `@` (or `www` if you prefer www.udaydahiya.org)
   - **Target**: `YOUR_USERNAME.github.io`
   - **TTL**: Auto
   - **Proxy**: DNS only (grey cloud)

3. Add another **CNAME** for `www` (if using `@` above):
   - **Name**: `www`
   - **Target**: `YOUR_USERNAME.github.io`

Wait 10-15 minutes for DNS propagation, then your site will be live at `https://udaydahiya.org`

### 5. Verify HTTPS

Once configured, GitHub will automatically provision an SSL certificate. You should see a checkmark next to your domain in the Pages settings.

---

## Updating Your Site

Once deployed, any push to the `main` branch will:
1. Trigger the GitHub Actions workflow
2. Build the Hugo site
3. Deploy to GitHub Pages
4. Your site updates within 1-2 minutes

Just make changes locally, commit, and push:

```bash
git add .
git commit -m "Update: Add new project"
git push
```

---

## Troubleshooting

**Site not building?**
- Check the "Actions" tab in your GitHub repo for build logs
- Ensure Hugo version in workflow matches your local version

**Domain not working?**
- Verify CNAME records in Cloudflare DNS
- Wait for DNS propagation (5-15 minutes)
- Check GitHub Pages settings for SSL certificate status

**Still having issues?**
- GitHub Pages docs: https://docs.github.com/en/pages
- Hugo hosting guide: https://gohugo.io/hosting-and-deployment/hosting-on-github/
