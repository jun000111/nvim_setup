sudo pacman -S nodejs npm xclip unzip ripgrep alacritty
cp ~/.config/nvim/etc/install_fonts.sh ~/install_fonts.sh
cp -r ~/.config/nvim/etc/patched-fonts ~/patched-fonts
cp -r ~/.config/nvim/etc/alacritty ~/.config/alacritty
cd ~
sudo chmod +x ./install_fonts.sh
./install_fonts.sh

