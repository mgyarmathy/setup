# Needed for all installers
# sudo apt update -y
# sudo apt upgrade -y
# sudo apt install -y stow

cd ~/Code/mgyarmathy/setup/dotfiles

# Configure each dotfile module with stow 
for dir in ~/Code/mgyarmathy/setup/dotfiles/*; do stow $(basename $dir) -t $HOME; done

cd - > /dev/null
