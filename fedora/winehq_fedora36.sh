#!/bin/bash

#Versão 0.1
#Testado: Fedora 36


function AtualizandoPacotesSistema () {
    sudo dnf update
    sudo dnf upgrade -y
    echo "----------------------------------------"
    echo "/                                      /"
    echo "/ Atualizando os pacotes do sistema !  /"
    echo "/                                      /"
    echo "----------------------------------------"


    function InstallWineHQ () {
        sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/36/winehq.repo
        sudo dnf install -y winehq-stable
        echo "----------------------------------------"
        echo "/                                      /"
        echo "/ Fedora 36 Install WineHQ !           /"
        echo "/                                      /"
        echo "----------------------------------------"
    }
}
AtualizandoPacotesSistema
InstallWineHQ