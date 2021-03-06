# Disable Guest Session
sudo sh -c 'printf "[Seat:*]\nallow-guest=false\n" > /etc/lightdm/lightdm.conf.d/50-no-guest.conf'

# Install Pre-req package
sudo apt-get install gdebi -y

# Install NoMachine
http://download.nomachine.com/download/5.2/Linux/nomachine_5.2.21_1_amd64.deb
sudo gdebi -n nomachine_5.2.21_1_amd64.deb

# Install JDK 1.8
sudo apt-get install default-jdk -y

# Install SmartGit
wget http://www.syntevo.com/static/smart/download/smartgit/smartgit-17_0_4.deb
sudo gdebi -n smartgit-17_0_4.deb

# Install VirtualBox, Extension Pack and USB3.0 support
sudo apt-get install gcc make -y
wget http://download.virtualbox.org/virtualbox/5.1.12/virtualbox-5.1_5.1.12-112440~Ubuntu~yakkety_amd64.deb
sudo gdebi -n virtualbox-5.1_5.1.12-112440~Ubuntu~yakkety_amd64.deb
wget http://download.virtualbox.org/virtualbox/5.1.12/Oracle_VM_VirtualBox_Extension_Pack-5.1.12-112440.vbox-extpack
sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-5.1.12-112440.vbox-extpack
sudo usermod -a -G vboxusers young

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb

# Install Telegram
sudo add-apt-repository ppa:atareao/telegram -y
sudo apt-get update -y
sudo apt-get install telegram -y

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 -y

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update -y

# 4. Install Spotify
sudo apt-get install spotify-client -y --allow-unauthenticated

# Install OpenVPN Connect
sudo apt install network-manager-openvpn-gnome -y

# Install Sublime Text 3
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
sudo gdebi -n sublime-text_build-3126_amd64.deb

# Install core Microsoft Fonts
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
sudo gdebi -n ttf-mscorefonts-installer_3.6_all.deb

# Install Wine 32-bit and PlayOnLinux
sudo dpkg --add-architecture i386
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update -y
sudo apt-get install playonlinux -y
sudo apt-get install winbind -y
sudo apt upgrade -f ttf-mscorefonts-installer -y

# Install Vagrant
wget https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.deb
sudo gdebi -n vagrant_1.9.1_x86_64.deb

# Install Opera
wget http://download4.operacdn.com/pub/opera/desktop/42.0.2393.94/linux/opera-stable_42.0.2393.94_amd64.deb
sudo gdebi -n opera-stable_42.0.2393.94_amd64.deb

# Enable exfat support
sudo apt-get install exfat-fuse exfat-utils -y

# Support for import color profiles
sudo apt-get install gnome-color-manager -y

# Support for gthumb image editor
sudo apt-get install gthumb -y

# Remove unnecessary packages
sudo apt autoremove -y
