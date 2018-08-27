#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install python wget unzip nodejs -y
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" -y
python get-pip.py -y
sudo apt-get upgrade
sudo apt-get install npm
sudo pip install -U pytest
sudo pip install selenium
sudo pip install pytest-selenium
sudo apt-get install build-essential chrpath libssl-dev libxft-dev libfreetype6-dev libfreetype6 libfontconfig1-dev libfontconfig1 -y

sudo wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
sudo tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /usr/local/share/
sudo ln -s /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/
sudo apt install phantomjs
sudo apt install awscli

if [ -f ~/.ssh/id_rsa.pub ]
then
    echo "Using existing ssh keys"
else
    echo "Making ssh keys to use"
    ssh-keygen
fi


if [ -f "/usr/local/bin/terraform" ]
then
    echo "/usr/local/bin/terraform exists"
else
    echo "Installing terraform"
    wget -nc https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_linux_amd64.zip
    sudo mkdir -p /usr/local/bin
    sudo unzip terraform_0.8.4_linux_amd64.zip -d /usr/local/bin
fi
