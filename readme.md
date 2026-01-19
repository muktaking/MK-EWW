Since you are working on your **Eww** configuration on **Manjaro**, setting up Git will allow you to version control your files and share them easily.

Here is the step-by-step guide to setting up Git and pushing your project to GitHub.

---

## 1. Install & Configure Git

First, ensure Git is installed and identify yourself to the system.

```bash
# Install Git
sudo pacman -S git

# Set your global username and email
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"

```

---

## 2. Initialize Git in your Eww Folder

Navigate to your configuration directory and initialize it as a repository.

```bash
cd ~/.config/eww

# Initialize the repository
git init

# Create a .gitignore file (Optional but recommended)
# This prevents tracking temporary or large files
echo "scripts/__pycache__/" >> .gitignore

```

---

## 3. Create a Repository on GitHub

1. Log in to [GitHub](https://github.com).
2. Click the **+** icon in the top right and select **New repository**.
3. Name it `my-eww-widgets`.
4. Keep it Public or Private (your choice).
5. **Do not** initialize with a README, license, or .gitignore (we already have files).
6. Click **Create repository**.

---

## 4. Authenticate (GitHub CLI)

GitHub no longer accepts your account password for pushing code. The easiest way on Linux is using the **GitHub CLI**.

```bash
# Install GitHub CLI
sudo pacman -S github-cli

# Log in to your account
gh auth login

```

*Follow the prompts: Select **GitHub.com**, **HTTPS**, and **Login with a web browser**.*

---

## 5. Add Files and Push

Now, connect your local folder to the GitHub repository you just created.

```bash
# Add all your files (yuck, scss, scripts, readme)
git add .

# Commit the changes
git commit -m "Initial commit: Eww clock widget with storage and weather"

# Link to your GitHub repo (replace URL with yours)
git remote add origin https://github.com/YOUR_USERNAME/my-eww-widgets.git

# Rename branch to main
git branch -M main

# Push to GitHub
git push -u origin main

```

---

## 6. How to Update Later

Whenever you make changes to your style or scripts, follow these three simple steps to update GitHub:

1. **Stage:** `git add .`
2. **Commit:** `git commit -m "Adjusted weather margins and storage icons"`
3. **Push:** `git push`

---

### Quick Pro-Tip for your Eww Scripts

If you share your repository, remember that your `profile.png` is in that folder. If you want to keep your personal photo private, add `profile.png` to your `.gitignore.
