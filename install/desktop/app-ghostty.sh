sudo apt install -y libgtk-4-dev libadwaita-1-dev git
git clone https://github.com/ghostty-org/ghostty /tmp/ghostty
cd /tmp/ghostty
mise use -g zig@1.13
zig build -p $HOME/.local -Doptimize=ReleaseFast
cd -
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $( which ghostty ) 10
sudo update-alternatives --set x-terminal-emulator $HOME/.local/bin/ghostty
