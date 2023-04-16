# update and upgrade
apt update -y && apt upgrade -y

# install steam and screen output
apt install steam xorg openbox xinit

# install drivers for steam
sudo apt install nvidia-driver-libs:i386

# start the screen
startx

# open steam
steam
