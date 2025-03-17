#!/bin/bash

echo "🚀 Starting setup..."

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "🍺 Homebrew is already installed."
fi

# Update Homebrew
echo "🔄 Updating Homebrew..."
brew update && brew upgrade

# Install development tools
echo "🛠️ Installing CLI tools..."
brew install git
brew install golang
brew install node
brew install npm
brew install docker
brew install docker-compose

# Install GUI applications
echo "📦 Installing applications..."
brew install --cask docker
brew install --cask docker-desktop
brew install --cask visual-studio-code
brew install --cask spotify
brew install --cask slack
brew install --cask messenger
brew install --cask whatsapp
brew install --cask discord
brew install --cask notion
brew install --cask arc
brew install --cask dbeaver-community
brew install --cask mongodb-compass

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "🐚 Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "🐚 Oh My Zsh is already installed."
fi

# Install Xcode Command Line Tools
echo "📲 Installing Xcode Command Line Tools..."
xcode-select --install

# Install global NPM packages
echo "📦 Installing global npm packages..."
npm install -g nodemon

# Install VS Code extensions
echo "🔌 Installing VS Code extensions..."
if command -v code &>/dev/null; then
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension eamodio.gitlens
  code --install-extension golang.go
  code --install-extension esbenp.prettier-vscode
  code --install-extension simon9608.vscode-clock
  code --install-extension natqe.reload
else
  echo "⚠️ VS Code is not installed or not found in PATH. Skipping extensions."
fi

# Ask whether to generate an SSH key for GitHub
read -p "🔑 Do you want to generate an SSH key for GitHub? (y/n) " generate_ssh

if [[ "$generate_ssh" == "y" || "$generate_ssh" == "Y" ]]; then
  if [ -f "$HOME/.ssh/id_ed25519" ]; then
    echo "✅ An SSH key already exists: $HOME/.ssh/id_ed25519"
  else
    echo "🔑 Generating a new SSH key..."
    read -p "Enter your GitHub email: " email
    ssh-keygen -t ed25519 -C "$email" -f "$HOME/.ssh/id_ed25519" -N ""
    eval "$(ssh-agent -s)"
    ssh-add "$HOME/.ssh/id_ed25519"
    echo "📋 Here is your public SSH key (add it to GitHub):"
    cat "$HOME/.ssh/id_ed25519.pub"
  fi
fi

echo "✅ Setup complete! Restart your terminal to apply changes."
