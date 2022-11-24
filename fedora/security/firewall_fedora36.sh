#!/bin/bash

#Versão 0.1
#Ultima modificação: 03/11/2022
#Testado: Fedora 36


function enableDisableFirewall () {
    sudo systemctl status firewalld.service
    #sudo systemctl disable firewalld.service
    #sudo systemctl enable firewalld.service
    echo "----------------------------------------"
    echo "/                                      /"
    echo "/ Fedora 36 Disable Enable Firewall !  /"
    echo "/                                      /"
    echo "----------------------------------------"
    
}
enableDisableFirewall