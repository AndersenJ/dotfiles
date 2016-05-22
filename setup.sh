sudo pacman -Syu vim neovim i3-wm i3status i3lock dmenu xorg-server xorg-utils xorg-xclipboard xorg-apps xterm xorg-xinit firefox networkmanager htop screenfetch git xclip emacs
sudo dnf -y install dnf-plugins-core
sudo dnf -y copr enable dperson/neovim
sudo dnf -y install neovim
sudo dnf install vim i3 firefox git htop python2-greenlet-devel xclip emacs
chmod +x udf.sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
./udf.sh
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
tar xvfz clewn.tar.gz
