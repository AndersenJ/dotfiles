sudo pacman -Syu vim neovim i3-wm i3status i3lock dmenu xorg-server xorg-utils xorg-xclipboard xorg-apps xterm xorg-xinit firefox networkmanager htop screenfetch git
chmod +x udf.sh
./udf.sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.i3
rm ~/.i3/config
cp .i3/config ~/.i3
tar xvfz clewn.tar.gz
