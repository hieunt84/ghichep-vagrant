#!/bin/sh
# OpenSSH Server
sudo sed -i /etc/ssh/sshd_config -e \
    "/#Author*/ c AuthorizedKeysFile %h/.ssh/authorized_keys"
sudo service ssh restart
    
# Installing Guest tools
sudo yum install -y gcc dkms build-essential \
    linux-headers-server
    
# Install VBoxLinuxAdditions
# sudo /media/vagrant/VBox_GAs_5.2.14/VBoxLinuxAdditions.run

