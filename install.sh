#!/usr/bin/env bash

echo 'Type your password to install dependencies'
#for debian based distros:
sudo apt install fish kitty ranger bat diodon pasystray pavucontrol playerctl picom xscreensaver xscreensaver-data-extra xscreensaver-gl-extra rofi polybar i3-wm arandr lxrandr lxappearance zathura feh nitrogen neofetch neovim htop
#for arch based distros:
#soon

echo 'Type your password to change your shell for fish'
chsh -s /usr/bin/fish

cp -Tr .config ~/.config/
echo 'Dotfiles copied'

echo 'Do you want to install nerd fonts?(Type y to install them)'
read install_nf
typeset -l install_nf
if [ $install_nf = 'y' ]; then
	git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git ~/.cache/nerd-fonts
	bash ~/.cache/nerd-fonts/install.sh
	yes | rm -r ~/.cache/nerd-fonts
else
	echo 'Remember to have installed nerd fonts'
fi

# install vim-plug and rofi-power-menu script
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/bin}"/rofi-power-menu --create-dirs \
       https://raw.githubusercontent.com/jluttine/rofi-power-menu/master/rofi-power-menu'
chmod +x ~/.local/bin/rofi-power-menu
