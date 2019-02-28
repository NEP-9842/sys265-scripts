#!/bin/bash
#SECURE-SSH.SH
#AUTHOR NEP-9842
#Creates a new ssh user
#Adds a public key to that users authorized keys file
#Removes roots ability to ssh in


echo "Hello, Please enter you desired username: "

read NEWUSER

sudo useradd $NEWUSER

sudo mkdir /home/$NEWUSER/.ssh

sudo cp linux/public-keys/sys265.pub /home/$NEWUSER/.ssh/authorized_keys

sudo chmod 700 /home/$NEWUSER/.ssh

sudo chmod 600 /home/$NEWUSER/.ssh/authorized_keys

sudo chown -R $NEWUSER:$NEWUSER /home/$NEWUSER/.ssh

sudo sed -i -e 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

echo "Your account has been created. NEP NEP!"
