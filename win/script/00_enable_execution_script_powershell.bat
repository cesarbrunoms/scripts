@echo off
rem ##########
rem # Win10 Initial Setup Script
rem # Author: cesarbrunoms <bruno.cesar@outlook.it>
rem # Version: 1.4, 2022-12-30
rem ##########

echo 1 - Status Enable/Disable execution script PowerShell
PowerShell -Command "get-executionpolicy"
timeout 2

echo 2 - Enable execution script PowerShell
PowerShell -Command "set-ExecutionPolicy unrestricted"
timeout 2

echo 3 - Status Enable/Disable execution script PowerShell
PowerShell -Command "get-executionpolicy"
timeout 2

echo 4 - Listar
winget list
timeout 2

echo 5 - Abrir Script
PowerShell "c:\scripts\after_install_semsau.ps1"
timeout 2
exit