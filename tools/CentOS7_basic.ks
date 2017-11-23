#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Firewall configuration
firewall --disabled
# Install OS instead of upgrade
install
# Use HTTP installation media
url --url="http:// $http_server/cblr/links/ /$distro_name/"

# Set the system's root password (use $default_password that is configured in /etc/cobbler/settings)
rootpw --iscrypted $default_password_crypted

# Creates a new user on the system
user ttp --fullname=ttp --password=ttppassword123

# Network information
network --bootproto=dhcp --device=eth0 --onboot=on

# Reboot after installation
reboot

# System authorization information
auth useshadow passalgo=sha512

# Use graphical install
graphical

firstboot disable

# System keyboard
keyboard us

# System language
lang en_US

# SELinux configuration
selinux disabled

# Installation logging level
logging level=info

# System timezone
timezone Asia/Ho_Chi_Minh

# System bootloader configuration
bootloader location=mbr

clearpart --all --initlabel
part swap --asprimary --fstype="swap" --size=1024
part /boot --fstype xfs --size=500
part pv.01 --size=1 --grow
volgroup root_vg01 pv.01
logvol / --fstype xfs --name=lv_01 --vgname=root_vg01 --size=1 --grow

%packages
@^minimal

@core
%end
%addon com_redhat_kdump --disable --reserve-mb='auto'
%end
%post
touch /root/testOS.txt
cat << EOF > /root/testOS.txt
Boot Centos 7 successfully from Cobbler :D
EOF
%end
