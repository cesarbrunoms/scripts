#!/bin/bash

#Versão 0.3
#Testado: Fedora 36


function AtualizandoPacotesSistema () {
    sudo dnf update
    sudo dnf upgrade -y
    echo "----------------------------------------"
    echo "/                                      /"
    echo "/ Atualizando os pacotes do sistema !  /"
    echo "/                                      /"
    echo "----------------------------------------"
    

    function TraduzindoFedora () {
        sudo dnf install system-config-language -y
        system-config-language
        echo "----------------------------------------"
        echo "/                                      /"
        echo "/ Traduzindo Fedora !                  /"
        echo "/                                      /"
        echo "----------------------------------------"
        

        function AddRPMFusionRepository () {            
            sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
            echo "----------------------------------------"
            echo "/                                      /"
            echo "/ Add RPM Fusion Repository !          /"
            echo "/                                      /"
            echo "----------------------------------------"
            

            function AppsPluginsCodecsExtras () {
                sudo dnf groupupdate core -y
                sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
                sudo dnf groupupdate sound-and-video -y
                echo "----------------------------------------"
                echo "/                                      /"
                echo "/ Apps Plugins Codecs Extras !         /"
                echo "/                                      /"
                echo "----------------------------------------"
                

                function AppsPluginsCodecsExtras2 () {
                    sudo dnf install -y unzip p7zip p7zip-plugins unrar ffmpeg htop ipcalc gparted gnome-tweaks samba dnfdragora-gui neofetch timeshift
                    sudo dnf install -y https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
                    echo "----------------------------------------"
                    echo "/                                      /"
                    echo "/ Apps Plugins Codecs Extras 2         /"
                    echo "/                                      /"
                    echo "----------------------------------------"                   
                }
            }            
        }
    }
}
AtualizandoPacotesSistema
TraduzindoFedora
AddRPMFusionRepository
AppsPluginsCodecsExtras
AppsPluginsCodecsExtras2