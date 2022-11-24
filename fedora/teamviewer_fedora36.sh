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

    function InstallTeamViewer () {
        sudo dnf install -y https://download.teamviewer.com/download/linux/teamviewer.x86_64.rpm
        echo "----------------------------------------"
        echo "/                                      /"
        echo "/ Fedora 36 Install TeamViewer !       /"
        echo "/                                      /"
        echo "----------------------------------------"
    }    
}
AtualizandoPacotesSistema
InstallTeamViewer