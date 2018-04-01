#!/bin/bash
set -e
##################################################################################################################
#Debian and Ubuntu (deb/apt)
#
#To install Atom on Debian, Ubuntu, or related distributions,
#add our official package repository to your system by running
#the following commands:
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#Adding ATOM repositories

curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get install apt-transport-https
sudo apt-get update

#Install Atom
sudo apt-get install -y atom
#Install Atom Beta
sudo apt-get install -y atom-beta
