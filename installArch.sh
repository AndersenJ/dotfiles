# install base group
pacstrap /mnt base base-devel
genfstab -p /mnt >> /mnt/etc/fstab
echo "now change root into new system, clone the repos again, and run configureArch.sh"
