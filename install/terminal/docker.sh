if [[ $(uname) == 'Darwin' ]]; then
  brew install docker
  
  # add symlink to docker binary on your PATH
  ln -s /opt/homebrew/Cellar/docker/27.3.1/bin/docker /usr/local/bin/docker

  brew install docker-compose
  brew install docker-credential-helper

  cat <<EOF > ~/.docker/config.json
  {
    "currentContext": "colima",
    "cliPluginsExtraDirs": [
      "/opt/homebrew/lib/docker/cli-plugins"
    ]
  }
EOF

  # install colima container runtime
  brew install colima
  colima start --vm-type=vz --vz-rosetta --cpu 4 --memory 8 --disk 64
elif [[ $(uname) == 'Linux' ]]; then
  # Add the official Docker repo
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo wget -qO /etc/apt/keyrings/docker.asc https://download.docker.com/linux/ubuntu/gpg
  sudo chmod a+r /etc/apt/keyrings/docker.asc
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt update

  # Install Docker engine and standard plugins
  sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

  # Give this user privileged Docker access
  sudo usermod -aG docker ${USER}

  # Limit log size to avoid running out of disk
  echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
fi
