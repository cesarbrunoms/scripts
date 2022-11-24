#!/bin/bash

#Versão 0.2
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
        

        function InstallVirtualBox () {
            sudo apt install -y virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack
            echo "----------------------------------------"
            echo "/                                      /"
            echo "/ Instalando VirtualBox                /"
            echo "/                                      /"
            echo "----------------------------------------"
            

            function CorrigindoErroKernel () {
                sudo dpkg-reconfigure virtualbox-dkms
                sudo modprobe vboxdrv
                sudo apt install linux-headers-`uname -r`
                sudo usermod -a -G vboxusers $USER
                echo "----------------------------------------"
                echo "/                                      /"
                echo "/ Corrigindo erro após atualizaçao     /"
                echo "/ do kernel linux                      /"
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
AtualizandoPacotesSistema
AtualizandoPacotesInstalados
InstallVirtualBox
CorrigindoErroKernel
VerificandoDependencias