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
        

        function InstalandoVirtManager () {
            sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
            sudo usermod -a -G libvirt $USER
            echo "----------------------------------------"
            echo "/                                      /"
            echo "/ Instalando Virt-Manager !            /"
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
InstalandoVirtManager
VerificandoDependencias

                

                    


                        

                            


                                
                                
