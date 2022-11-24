#!/bin/bash

#Versão 0.1
#Testado: Ubuntu 22.04 LTS


function removeFileTemp () {
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
    echo "----------------------------------------"
    echo "/                                       /"
    echo "/ Limpeza de arquivos temp feita com !  /"
    echo "/ sucesso, recomendamos reinicialização /"
    echo "/ do sistema !                          /"
    echo "/                                       /"
    echo "----------------------------------------"
}
removeFileTemp
