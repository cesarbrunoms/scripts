#!/bin/bash

#Versão 0.1
#Testado: Ubuntu 22.04 LTS

function AtualizandoPacotesSistema () {
    sudo apt update
    echo "----------------------------------------"
    echo "/                                      /"
    echo "/ Atualizando os pacotes do sistema !  /"
    echo "/                                      /"
    echo "----------------------------------------"
    

    function AtualizandoPacotesInstalados () {
        sudo apt upgrade -y
        sudo apt autoremove -y
        echo "----------------------------------------"
        echo "/                                      /"
        echo "/ Atualizando os pacotes instalados !  /"
        echo "/                                      /"
        echo "----------------------------------------"
            
            
        function InstalandoUbuntuExtras () {
            sudo apt install -y ubuntu-restricted-extras
            sudo apt install -y unrar unzip p7zip ffmpeg htop ipcalc gparted neofetch gnome-tweaks timeshift
            echo "----------------------------------------"
            echo "/                                      /"
            echo "/ Instalando Ubuntu Restricted Extras !/"
            echo "/                                      /"
            echo "----------------------------------------"
                
                
            function AtivandoMinimizarAoClicar () {
                gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
                echo "----------------------------------------"
                echo "/                                      /"
                echo "/ Ativando opção minimizar ao clicar ! /"
                echo "/                                      /"
                echo "----------------------------------------"
                    

                function HabilitandoX86 () {
                    sudo dpkg --add-architecture i386
                    echo "----------------------------------------"
                    echo "/                                      /"
                    echo "/ Habilitando arquitetura x86 !        /"
                    echo "/                                      /"
                    echo "----------------------------------------"
                        

                    function VerificandoDependencias () {
                        sudo apt install -f
                        echo "----------------------------------------"
                        echo "/                                      /"
                        echo "/ Verificando se a dependências        /"
                        echo "/ de pacotes no sistema !              /"
                        echo "/                                      /"
                        echo "----------------------------------------"
                        echo ""
                        echo ""           
                        echo "----------------------------------------"
                        echo "/                                      /"
                        echo "/ Reinicie seu sistema o mais          /"
                        echo "/ breve possivel !                     /"
                        echo "/                                      /"
                        echo "----------------------------------------"
                    }
                }
            }
        }
    }
}

AtualizandoPacotesSistema
AtualizandoPacotesInstalados
InstalandoUbuntuExtras
AtivandoMinimizarAoClicar
HabilitandoX86
VerificandoDependencias
