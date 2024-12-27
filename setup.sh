/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/theolatournee/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install docker
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask slack
brew install --cask robo-3t
brew install --cask dbeaver-community
brew install --cask slack
brew install --cask messenger
brew install --cask whatsapp
brew install --cask discord
brew install --cask notion
brew install --cask firefox
brew install --cask insomnia
brew install golang
brew install node
brew install npm
npm -g tsc
npm -g nodemon
