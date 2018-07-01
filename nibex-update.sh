#/bin/bash

cd ~
echo "****************************************************************************"
echo "****************************************************************************"
echo "*****************************CryptoNeverSleeps******************************"

cd /tmp

nibex-cli -daemon stop
systemctl stop Nibex.service
rm /usr/local/bin/nibexd
rm /usr/local/bin/nibex-cli
wget -N https://github.com/CryptoNeverSleeps/nibex/releases/download/v2.1/nibex-linux-mn.tar.gz
tar xvzf nibex-linux-mn.tar.gz --strip 1
mv nibexd nibex-cli /usr/local/bin

systemctl start Nibex.service >/dev/null 2>&1


echo "Running nibex-cli getinfo"

nibex-cli getinfo

Echo "Finished"


