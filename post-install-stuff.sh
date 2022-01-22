sudo pacman -S --noconfirm vim telegram-desktop gnome-disk-utility mpv obs-studio nvidia nvidia-utils nvidia-settings zsh steam plasma-browser-integration
yay -S --noconfirm discord spotify spotify-adblock-git spicetify-cli pfetch
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spotify
mkdir git
cd git
git clone https://github.com/morpheusthewhite/spicetify-themes.git
cd spicetify-themes
cp -r * ~/.config/spicetify/Themes
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
mkdir -p ../../Extensions
cp dribbblish.js ../../Extensions/.
spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme purple
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify backup apply
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i "$ a pfetch" ~/.zshrc


