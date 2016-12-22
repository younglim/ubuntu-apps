# Install Pre-req package
sudo apt-get install gdebi -y

# Install JDK 1.8
sudo apt-get install default-jdk -y

# Install SmartGit
wget http://www.syntevo.com/static/smart/download/smartgit/smartgit-8_0_1.deb
sudo gdebi smartgit-8_0_1.deb

# Install VirtualBox, Extension Pack and USB3.0 support
wget http://download.virtualbox.org/virtualbox/5.1.10/virtualbox-5.1_5.1.10-112026~Ubuntu~yakkety_amd64.deb
sudo gedebi virtualbox-5.1_5.1.10-112026~Ubuntu~yakkety_amd64.deb
wget http://download.virtualbox.org/virtualbox/5.1.10/Oracle_VM_VirtualBox_Extension_Pack-5.1.10-112026.vbox-extpack
sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-5.1.10-112026.vbox-extpack
sudo usermod -a -G vboxusers $USER

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

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
sudo apt-get install spotify-client -y

# Install OpenVPN Connect
sudo apt-get install network-manager-openvpn -y

# Install Sublime Text 3
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
sudo gdebi sublime-text_build-3126_amd64.deb

# Install Wine 32-bit and PlayOnLinux
sudo dpkg --add-architecture i386
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update -y
sudo apt-get install playonlinux -y