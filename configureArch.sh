echo -n "Enter a hostname: "
read newHostname
echo "$newHostname" > /etc/hostname
ln -s /usr/share/zoneinfo/America/Denver /etc/localtime
hwclock --systohc --utc
locale-gen
rm /etc/locale.gen
cp ./locale.gen /etc/locale.gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
export LANG=en_US.UTF-8
systemctl enable dhcpcd@eth0.service
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
useradd -m -g users -G wheel,storage,power -s /bin/bash johnathan
pacman -Syu --noconfirm sudo alsa-utils

echo "use alsamixer to configure sound"
echo "Don't forget to put Defaults insults in your sudoers file with the sudo visudo command!"
echo "Also uncomment %wheel ALL=(ALL) ALL, whatever that does"
