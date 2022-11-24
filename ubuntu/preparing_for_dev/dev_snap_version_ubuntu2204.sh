#!/bin/bash

#Versão 0.3
#Testado: Ubuntu 22.04.1 LTS
#https://youtu.be/t3RYjUIFl8k


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
        

        function InstallFlutter () {
            sudo snap install flutter --classic
            sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev
            echo "----------------------------------------"
            echo "/                                      /"
            echo "/ Install Flutter                      /"
            echo "/ using snapd                          /"
            echo "/                                      /"
            echo "----------------------------------------"
            #https://youtu.be/e63OlW_2gpQ
            

            function FlutterVersion () {
                flutter --version
                echo "----------------------------------------"
                echo "/ flutter --version                    /"
                echo "----------------------------------------"
                

                function FlutterSdkPath () {
                    flutter sdk-path
                    echo "----------------------------------------"
                    echo "/ flutter sdk-path                     /"
                    echo "----------------------------------------"
                    #acrescentar no arquivo: /home/$USER/.bashrc
                    ### EXPORT FLUTTER ###
                    export PATH="$PATH:/home/$USER/dev/flutter/bin"
                    export PATH="$PATH:/home/$USER/dev/flutter/bin/cache/dart-sdk/bin"
                    #https://docs.flutter.dev/get-started/install/linux


                    function InstallAndroidStudio () {
                        sudo snap install android-studio --classic
                        echo "----------------------------------------"
                        echo "/                                      /"
                        echo "/ Install Android Studio               /"
                        echo "/ using snapd                          /"
                        echo "/                                      /"
                        echo "----------------------------------------"
                        

                        function functionAndroidStudioVersion () {
                            android-studio -version
                            echo "----------------------------------------"
                            echo "/ android-studio -version              /"
                            echo "----------------------------------------"
                            

                            function InstallVscode () {
                                sudo snap install code --classic
                                echo "----------------------------------------"
                                echo "/                                      /"
                                echo "/ Install VSCode                       /"
                                echo "/ using snapd                          /"
                                echo "/                                      /"
                                echo "----------------------------------------"
                                

                                function VscodeVersion () {
                                    code --version
                                    echo "----------------------------------------"
                                    echo "/ code --version                       /"
                                    echo "----------------------------------------"
                                    #https://youtu.be/KOe6HZlnrT4

                                    
                                    function InstallJava8 () {
                                        sudo apt install -y openjdk-8-jdk
                                        echo "----------------------------------------"
                                        echo "/                                      /"
                                        echo "/ Install Java 8                       /"
                                        echo "/                                      /"
                                        echo "----------------------------------------"
                                        

                                        function JavaVersion () {
                                            java -version
                                            echo "----------------------------------------"
                                            echo "/ java -version                        /"
                                            echo "----------------------------------------"
                                            

                                            function InstallGit () {
                                                #sudo add-apt-repository ppa:git-core/ppa
                                                #sudo apt udpate
                                                sudo apt install -y git
                                                echo "----------------------------------------"
                                                echo "/                                      /"
                                                echo "/ Install Git                          /"
                                                echo "/                                      /"
                                                echo "----------------------------------------"
                                                

                                                function GitVersion () {
                                                    git --version
                                                    echo "----------------------------------------"
                                                    echo "/ git --version                        /"
                                                    echo "----------------------------------------"
                                                    GitVersion
                                                    #https://git-scm.com/download/linux


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
                                }
                            }
                        }

                    }
                }
            }

        }
    }
}
AtualizandoPacotesSistema
AtualizandoPacotesInstalados
InstallFlutter
FlutterVersion
FlutterSdkPath
InstallAndroidStudio
AndroidStudioVersion
InstallVscode
VscodeVersion
InstallJava8
JavaVersion
InstallGit
VerificandoDependencias