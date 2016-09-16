```
sudo su 
#login by root
yum install tmux lsof wget net-tools curl
yum groupinstall "Development Tools"
yum install java-1.8.0-openjdk-devel
yum install clang-devel

wget 'http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm'
yum localinstall  nginx-release-centos-7-0.el7.ngx.noarch.rpm

systemctl start nginx.service
systemctl enable nginx.service

#/etc/sysconfig/network-scripts/ifcfg-enp0s3 enable = yes

wget 'http://repo.mysql.com//mysql57-community-release-el7-7.noarch.rpm'
yum localinstall  mysql57-community-release-el7-7.noarch.rpm
yum install mysql-community-server
service mysqld start
# sudo grep 'temporary password' /var/log/mysqld.log 
# mysql_secure_installation
# liwenxiang@ub123ABC

firewall-cmd --permanent --zone=internal --change-interface=enp0s8
firewall-cmd --permanent --zone=public --add-service=http
# firewall-cmd --permanent --zone=public --add-service=mysql
firewall-cmd --reload
exit


#login by noroot

mkdir tool/
git clone https://github.com/liwenxiang/vimrc.git ~/tool/vimrc/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "source ~/tool/vimrc/vimrc" > ~/.vimrc
echo "alias vim='/usr/bin/vim'" >> ~/.bash_profile
echo "alias vi='/usr/bin/vim'" >> ~/.bash_profile
export PS1='\n\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m`hostname`\e[m \e[4m`pwd`\e[m\e[1;37m]\e[m\e[1;36m\e[m\n\$ ' 


# mkdir /mnt/cdrom
# mount /dev/cdrom /mnt/cdrom
# cd /mnt/cdrom
# yum install kernel-devel-3.10.0-229.el7.x86_64
# ./VBoxLinuxAdditions.run
# 
# mkdir /data/m2/
# mount -t vboxsf m2 /data/m2/
# #echo "m2   /data/m2/   vboxsf   defaults  0   0" >> /etc/fstab
# 
```
