#!/usr/bin/env bash
echo "Renameing user"
groupadd vagrant
su -c "useradd vagrant -s /bin/bash -m -g vagrant -G vagrant"
chown -R vagrant:vagrant /home/vagrant
echo "vagrant:vagrant" | chpasswd
adduser vagrant sudo
echo %vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant
usermod -a -G sudo vagrant
mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
touch /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant
curl -Ss -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub >> /home/vagrant/.ssh/authorized_keys
echo "Done renameing user"
