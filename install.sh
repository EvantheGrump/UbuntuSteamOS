# update and upgrade
apt update -y && apt upgrade -y

# install steam and screen output
apt install steam xinit xorg dbus-x11 xserver-xorg-video-intel xserver-xorg-legacy pulseaudio upower -y --no-install-recommends --no-install-suggests

# add user
adduser --disabled-password --disabled-login --gecos "" steam

# add user to groups
usermod -a -G audio,video,input,dialout,plugdev,tty steam

# edit /etc/X11/Xwrapper.config and replace allowed_users=console for allowed_users=anybody
sed -ie 's/allowed_users=console/allowed_users=anybody/g' /etc/X11/Xwrapper.config

# add to the end of /etc/X11/Xwrapper.config
echo "needs_root_rights=yes" >> /etc/X11/Xwrapper.config
