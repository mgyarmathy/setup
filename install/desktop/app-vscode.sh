if [[ $(uname) == 'Darwin' ]]; then
  brew install --cask visual-studio-code

  mkdir -p ~/Library/Application\ Support/Code/User
  cp ~/Code/mgyarmathy/setup/dotfiles/vscode/.config/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
elif [[ $(uname) == 'Linux' ]]; then
  cd /tmp
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
  sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
  echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
  rm -f packages.microsoft.gpg
  cd -

  sudo apt update -y
  sudo apt install -y code

  mkdir -p ~/.config/Code/User
  cp ~/Code/mgyarmathy/setup/dotfiles/vscode/.config/Code/User/settings.json ~/.config/Code/User/settings.json
fi

code --install-extension ms-vscode.Theme-TomorrowKit
