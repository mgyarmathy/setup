# Display system information in the terminal
if [[ $(uname) == 'Darwin' ]]; then
  brew install fastfetch
elif [[ $(uname) == 'Linux' ]]; then
  sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
  sudo apt update -y
  sudo apt install -y fastfetch
fi

