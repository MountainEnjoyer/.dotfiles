#usr/bin/bash/

clear
echo "Linking .config/kitty/"
echo " "

ln -sf ~/.dotfiles/kitty/* ~/.config/kitty/

echo "Done :)"
echo " "

echo "Linking .config/hypr/"
echo " "
ln -sf ~/.dotfiles/hypr/* ~/.config/hypr/
echo "Done"

echo ""
ln -sf ~/.dotfiles/neofetch/* ~/.config/neofetch/

ln -sf ~/.dotfiles/nvim/* ~/.config/nvim/

ln -sf ~/.dotfiles/swaylock/* ~/.config/swaylock/

ln -sf ~/.dotfiles/waybar/* ~/.config/waybar/

ln -sf ~/.dotfiles/wofi/* ~/.config/wofi/

ln -sf ~/.dotfiles/starship.toml ~/.config/

echo "done"
