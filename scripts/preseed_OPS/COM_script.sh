sed -i '/PermitRootLogin / s/ .*/ yes/' /target/etc/ssh/sshd_config
sed -i 's/$http_server/vn.archive.ubuntu.com/g' /target/etc/apt/sources.list
sed -i 's|cblr/links/$distro_name|ubuntu|g' /target/etc/apt/sources.list
# uncomment 3 following lines if you want to use apt-cache-ng
#cat << EOF > /target/etc/apt/apt.conf.d/00aptproxy
#Acquire::http::Proxy "http://192.168.122.1:3142";
#EOF
cp /target/etc/rc.local /target/etc/rc.local.bak
chmod 755 /target/etc/rc.local
cat << HERE > /target/etc/rc.local
#!/bin/bash
apt update -y && apt upgrade -y
cd /root
wget --no-parent --recursive -nH --reject=index.html* http://$http_server/OPS-setup/
cd /root/OPS-setup/COM
echo "COM_NUM=1" > /root/OPS-setup/COM/com_num.sh
source com-all.sh
rm /etc/rc.local
mv /etc/rc.local.bak /etc/rc.local
exit 0
HERE