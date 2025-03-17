# 💻 Mac Setup Script

This script automates the setup of a new Mac environment by installing essential development tools, applications, and VS Code extensions. It also offers the option to generate an SSH key for GitHub.

## 📦 Features

- Installs **Homebrew** and updates it
- Installs **CLI tools**: Git, Go, Node.js, NPM, Docker, Docker Compose
- Installs **GUI applications**: VS Code, Docker Desktop, Slack, Discord, Notion, Spotify, and more
- Installs **Oh My Zsh** for an improved terminal experience
- Installs **Xcode Command Line Tools**
- Installs **Global NPM packages** (e.g., `nodemon`)
- Installs **VS Code extensions**:
  - Docker (`ms-azuretools.vscode-docker`)
  - GitLens (`eamodio.gitlens`)
  - Go (`golang.go`)
  - Prettier (`esbenp.prettier-vscode`)
  - Clock (`simon9608.vscode-clock`)
  - Reload (`natqe.reload`)
- Prompts to **generate an SSH key** for GitHub (if desired)

## ⚙️ Installation

### Download the script

Clone the repository or manually download the `setup.sh` file.

```sh
git clone https://github.com/YOUR_USERNAME/mac-setup.git
cd mac-setup
```
### Make the script executable

```sh
chmod +x setup.sh
```

### Run the script

```sh
./setup.sh
```

### 🔑 SSH Key Setup

During execution, the script will ask if you want to generate an SSH key for GitHub.
If you choose yes, it will:

1. Check if an SSH key already exists.
2. Generate a new ed25519 key if none exists.
3. Print the public key so you can add it to GitHub SSH Keys.

❓ Troubleshooting
- If VS Code extensions are not installing, make sure code is available in your PATH.
- If Homebrew is not detected, manually install it:
  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
