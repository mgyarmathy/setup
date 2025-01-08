if [[ $(uname) == 'Darwin' ]]; then
  # do nothing, installed on MacOS by default
elif [[ $(uname) == 'Linux' ]]; then
  sudo apt install -y zsh
fi

ch -s $(which zsh)
