echo -n "Enter a hostname: "
read newHostname
echo "$newHostname" > /etc/hostname
ln -s /usr/share/zoneinfo/America/Denver /etc/localtime
hwclock --systohc --utc
rm /etc/locale.gen
cp ./locale.gen /etc/locale.gen
locale-gen
rm /etc/locale.conf
echo "LANG=en_US.UTF-8" > /etc/locale.conf
export LANG=en_US.UTF-8
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
pacman -Syu --noconfirm sudo alsa-utils zsh
useradd -m -g users -G wheel,storage,power,audio -s /bin/zsh johnathan

echo "use alsamixer to configure sound"
echo "Don't forget to put Defaults insults in your sudoers file with the sudo visudo command!"
echo "Also uncomment %wheel ALL=(ALL) ALL, whatever that does"
