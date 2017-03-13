#Arch Linux
sudo pacman -Syu cups dmenu emacs feh firefox fish git gvim htop i3-wm i3lock i3status lolcat lsof mutt networkmanager neovim net-tools ntp pcmanfm powertop pv python2-neovim python-neovim rofi sbcl screenfetch scrot sl transmission-qt ttf-hack unzip wine wine_gecko wine-mono wget xfce4-terminal xorg-apps xorg-server xorg-utils xorg-xclipboard xorg-xinit xclip xterm zsh zsh-syntax-highlighting
sudo systemctl enable ntpdate.service -q

#Fedora Linux
sudo dnf -y install dnf-plugins-core 2> /dev/null
sudo dnf -y copr enable dperson/neovim 2> /dev/null
sudo dnf -y copr enable heliocastro/hack-fonts 2> /dev/null
sudo dnf -y install vim i3 firefox git htop python2-greenlet-devel xclip emacs xfce4-terminal mutt neovim hack-fonts 2> /dev/null

#Linux Mint
sudo apt-get update && sudo apt-get upgrade 2> /dev/null
sudo apt-get install vim i3-wm i3status i3lock i3 suckless-tools network-manager htop git xclip emacs xfce4-terminal mutt scrot lsb-release 2> /dev/null

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
chmod +x udf.sh
./udf.sh
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
#tar xvfz clewn.tar.gz
