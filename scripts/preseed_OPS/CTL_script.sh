sed -i '/PermitRootLogin / s/ .*/ yes/' /target/etc/ssh/sshd_config
sed -i 's/$http_server/vn.archive.ubuntu.com/g' /target/etc/apt/sources.list
sed -i 's|cblr/links/$distro_name|ubuntu|g' /target/etc/apt/sources.list
cp /target/etc/rc.local /target/etc/rc.local.bak
echo -e "Acquire::http::Proxy \"http://192.168.122.1:3142\";" > /target/etc/apt/apt.conf.d/00aptproxy
chmod 755 /target/etc/rc.local
cat << HERE > /target/etc/rc.local
#!/bin/bash
apt update -y && apt upgrade -y
cd /root
wget --no-parent --recursive -nH --reject=index.html* http://192.168.122.110/OPS-setup/
cd /root/OPS-setup/CTL
source ctl-all.sh
exit 0
HERE