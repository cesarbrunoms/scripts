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


        function installFlatpak () {
            sudo apt install -y flatpak
            sudo apt install -y gnome-software-plugin-flatpak
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            echo "----------------------------------------"
            echo "/                                      /"
            echo "/ Instalando Flatpak !                 /"
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
AtualizandoPacotesSistema
AtualizandoPacotesInstalados
installFlatpak
VerificandoDependencias