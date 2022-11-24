#!/bin/bash

#Versão 0.1
#Ultima modificação: 03/11/2022
#Testado: Fedora 36


function DisableSELinux () {
    sestatus
    #sudo nano /etc/selinux/config
    #SELINUX=enforcing PARA
    #SELINUX=disabled
    echo "----------------------------------------"
    echo "/                                      /"
    echo "/ Fedora 36 Disable SELinux !          /"
    echo "/                                      /"
    echo "----------------------------------------"
    
}
DisableSELinux