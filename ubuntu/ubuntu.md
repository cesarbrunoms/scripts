----------------------------------------------------------------------
<h1>Ubuntu 22.04 LTS</h1>
  
<details><summary>Update Ubuntu</summary>
 
~~~shell
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y
sudo apt autoremove -y  
  
~~~  
</details>


<details><summary>Install Extras</summary>
 
~~~shell
sudo apt install -y ubuntu-restricted-extra  
  
~~~  

~~~shell
sudo dpkg --add-architecture i386
sudo apt install -y unrar unzip p7zip ffmpeg htop ipcalc gparted neofetch  
  
~~~  
  
~~~shell
sudo apt install -y gnome-tweaks
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'  
  
~~~  
</details>



<details><summary>Install Vir-tManager</summary>
 
 ~~~shell
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
sudo usermod -a -G libvirt $USER  
  
~~~  
</details>


<details><summary>Install VirtualBox</summary>
 
 ~~~shell
sudo apt install -y virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack  
  
~~~  
   
 ~~~shell
sudo dpkg-reconfigure virtualbox-dkms
sudo modprobe vboxdrv
sudo apt install linux-headers-`uname -r`
sudo usermod -a -G vboxusers $USER  
  
~~~  
</details>


<details><summary>Install Winbox Snap</summary>
 
 ~~~shell
# Install Winbox Ubuntu - Snap
sudo snap install winbox  
  
~~~  
</details>


<details><summary>Dev</summary>
 
 ~~~shell
# Install Flutter - Snap
sudo snap install flutter --classic
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev
flutter --version  
  
~~~
 
 ~~~shell
### EXPORT FLUTTER ###
export PATH="$PATH:/home/$USER/dev/flutter/bin"
export PATH="$PATH:/home/$USER/dev/flutter/bin/cache/dart-sdk/bin"
#acrescentar no arquivo: /home/$USER/.bashrc
#https://docs.flutter.dev/get-started/install/linux
######################  
  
~~~
 
 ~~~shell
# Install Android-Studio - Snap
sudo snap install android-studio --classic
android-studio -version  
  
~~~  
   
 ~~~shell
# Install VSCode - Snap
sudo snap install code --classic
code --version
  
~~~  
     
 ~~~shell
# Install Java 8 JDK
sudo apt install -y openjdk-8-jdk
java -version
  
~~~  
       
 ~~~shell
# Install Git
#sudo add-apt-repository ppa:git-core/ppa
#sudo apt udpate
sudo apt install -y git
git --version
  
~~~  
</details>


<details><summary>Remove File Temp</summary>
 
 ~~~shell
#Atualização do sistema
sudo apt udpate && sudo apt upgrade -y
  
#Limpando a Lixeira
sudo rm -rf /home/$USER/.local/share/Trash/files/*
  
#Limpando a pasta temp
sudo rm -rf /var/temp/*
  
#Exclusão de cache inúteis do sistema
sudo apt clean -y
  
#Exclusão de programas que não estão sendo mais utilizados pelo sistema
sudo apt autoremove -y
  
#Exclusão de arquivos duplicados
sudo apt autoclean -y
  
#Resolve pacotes quebrados
sudo dpkg --configure -a  
  
~~~  
</details>


<details><summary>###########</summary>
 
 ~~~shell
############# 
~~~  
</details>


<details><summary>###########</summary>
 
 ~~~shell
############# 
~~~  
</details>


<details><summary>###########</summary>
 
 ~~~shell
############# 
~~~  
</details>


<details><summary>###########</summary>
 
 ~~~shell
############# 
~~~  
</details>


<details><summary>###########</summary>
 
 ~~~shell
############# 
~~~  
</details>


