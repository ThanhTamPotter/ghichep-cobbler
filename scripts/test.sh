%post
cp /etc/rc.local /etc/rc.local.bak
chmod 755 /etc/rc.local

cat << EOF > /etc/rc.local
#!/bin/bash
apt update -y && apt upgrade -y
COBBLER_IP=
COBBLER_PASS="1"
PATH_OPS-setup=/var/www/html/OPS-setup
apt install sed -y
apt install sshpass -y
sshpass $COBBLER_PASS scp root@$COBBLER_IP:$PATH_OPS-setup /root

cd /root/OPS-setup/CTL
source ctl-all.sh
rm /etc/rc.local
mv /etc/rc.local.bak /etc/rc.local
exit 0
EOF

%end