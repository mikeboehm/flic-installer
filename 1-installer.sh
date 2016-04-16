# Linux installer script for Flic buttons
# Based on the Guide by CheapB https://github.com/50ButtonsEach/fliclib-linux-dist/issues/10
# Requires Debian Jessie https://www.raspberrypi.org/downloads/raspbian/

# Update all system packages
sudo apt-get update

# Update all installed packages
sudo apt-get upgrade -y

# this will take a while
# optional: clean out installation files:
sudo apt-get clean

# install needed packages for blueZ:
sudo apt-get install -y libglib2.0-dev
sudo apt-get install -y libdbus-1-dev
sudo apt-get install -y libudev-dev
sudo apt-get install -y automake
sudo apt-get install -y libtool
sudo apt-get install -y libical-dev
sudo apt-get install -y libreadline-dev

# Install BlueZ:
# At the time of creation, later versions of Bluez weren't compatible
git clone git://git.kernel.org/pub/scm/bluetooth/bluez.git
cd bluez
git checkout 5.37
./bootstrap

# this will take a while
./configure --enable-experimental --enable-library
make
sudo make install

## Install Flic library
mkdir ~/flic
cd ~/flic

# This will change based on the release - go and grab the newest link from the release page https://github.com/50ButtonsEach/fliclib-linux-dist/releases
sudo wget https://github.com/50ButtonsEach/fliclib-linux-dist/releases/download/1-beta3/fliclib-linux.tar.gz
sudo tar -zxvf fliclib-linux.tar.gz

sudo reboot