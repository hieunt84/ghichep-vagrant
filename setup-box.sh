#!/bin/sh
mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget --no-check-certificate \
  https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub \
  -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

sudo sed -i /etc/ssh/sshd_config -e \
    "/#Author*/ c AuthorizedKeysFile %h/.ssh/authorized_keys"
