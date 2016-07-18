cp /home/johnathan/dotfiles/goodmorning.timer /etc/systemd/system/goodmorning.timer
cp /home/johnathan/dotfiles/goodmorning.service /etc/systemd/system/goodmorning.service
systemctl enable goodmorning.timer
systemctl start goodmorning.timer
echo "LidSwitchIgnoreInhibited=no" >> /etc/systemd/logind.conf
