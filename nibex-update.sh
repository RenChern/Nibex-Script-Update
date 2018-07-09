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

rm -rf /root/.nibex/budget.dat
rm -rf /root/.nibex/database
rm -rf /root/.nibex/debug.log
rm -rf /root/.nibex/mnpayments.dat
rm -rf /root/.nibex/peers.dat
rm -rf /root/.nibex/blocks
rm -rf /root/.nibex/chainstate
rm -rf /root/.nibex/db.log
rm -rf /root/.nibex/fee_estimates.dat
rm -rf /root/.nibex/mncache.dat

function add_nodes() {
  cat << EOF >> /root/.nibex/nibex.conf
addnode=80.211.84.160
addnode=80.211.87.186
addnode=80.211.87.36
addnode=80.211.87.198
addnode=80.211.87.210
addnode=80.211.8.241
addnode=80.211.89.210
addnode=80.211.89.135
addnode=80.211.89.219
addnode=80.211.89.130
addnode=80.211.89.165
addnode=80.211.89.11
addnode=80.211.89.56
addnode=80.211.80.198
addnode=80.211.179.147
addnode=80.211.179.206
addnode=80.211.76.59
addnode=80.211.81.52
addnode=80.211.82.19
addnode=80.211.79.168
EOF
}

wget -N https://github.com/CryptoNeverSleeps/nibex/releases/download/v2.2/nibex-linux-mn.tar.gz
tar xvzf nibex-linux-mn.tar.gz --strip 1
mv nibexd nibex-cli /usr/local/bin

systemctl start Nibex.service
