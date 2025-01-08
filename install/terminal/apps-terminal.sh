if [[ $(uname) == 'Darwin' ]]; then
  brew install \
    bat \
    btop \
    fzf \
    ripgrep \
    tldr
elif [[ $(uname) == 'Linux' ]]; then
  sudo apt install -y \
    bat \
    btop \
    fzf \
    plocate \
    ripgrep \
    tldr
fi
