#recomended package to install on new linux machine
#run with sudo permision
#upgrade is going to be taking lonf as par your pc update status
apt update -y
apt upgrade -y
apt install kitty
#to skip install themes comment below code
#mkdir git
#cd git
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
#select theme and change name Afterglow to you convinient
ln -s ./kitty-themes/themes/Afterglow.conf ~/.config/kitty/theme.conf
echo "include ./theme.conf" >> kitty.conf
echo "Nitrogen for wallpaper piker"
apt install nitrogen -y
apt install curl -y
echo "stow to restore file"
apt install stow -y
echo "polybar for bar on upper side in i3"
apt install polybar -y
echo "temp sensore"
apt install lm-sensors -y
echo "Rofi to start application"
apt install rofi -y
echo "Remeber gpick isinstalled for piking color"
echo "If you feel you dont need it make it  comented "
echo "or remove after this script"
apt instll gpick
#  curl -sS https://starship.rs/install.sh | sh
# color picer sudo apt instll gpick
#  picom
# fzf # install from full
# nvim and vim # install from git nvim
#(good file manager)
