#!/bin/bash

echo "Hello, Please enter you desired username: "

read NEWUSER


sudo useradd $NEWUSER

sudo mkdir /home/$NEWUSER/.ssh

sudo cp linux/public-keys/sys265.pub /home/$NEWUSER/.ssh/authorized_keys

sudo chmod 700 /home/$NEWUSER/.ssh

sudo chmod 600 /home/$NEWUSER/.ssh/authorized_keys

sudo chown -R $NEWUSER:$NEWUSER /home/$NEWUSER/.ssh

echo "Your account has been created. NEP NEP!"
