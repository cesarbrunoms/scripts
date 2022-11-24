#!/bin/bash

#Versão 0.3
#Testado: Fedora 36


function InstallVirtManager () {
    sudo dnf install @virtualization -y
    sudo usermod -a -G libvirt $USER
    #https://docs.fedoraproject.org/en-US/quick-docs/creating-windows-virtual-machines-using-virtio-drivers/index.html
    #https://www.spice-space.org/download.html
    echo "----------------------------------------"
    echo "/                                      /"
    echo "/ Install Virt-Manager !               /"
    echo "/                                      /"
    echo "----------------------------------------"
}                     
InstallVirtManager