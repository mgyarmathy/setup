mkdir -p ~/.local/share/fonts

cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/InconsolataGo.zip
unzip InconsolataGo.zip -d InconsolataGo
cp InconsolataGo/*.ttf ~/.local/share/fonts
rm -rf InconsolataGo.zip InconsolataGo

fc-cache
cd -
