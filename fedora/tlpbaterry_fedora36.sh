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


    function InstallTLPBaterry () {
        sudo dnf install tlp tlp-rdw -y
        sudo systemctl enable tlp
        echo "----------------------------------------"
        echo "/                                      /"
        echo "/ Fedora 36 Install TLP Baterry !      /"
        echo "/                                      /"
        echo "----------------------------------------"
    }                        
}
AtualizandoPacotesSistema
InstallTLPBaterry 