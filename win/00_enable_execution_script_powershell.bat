@echo off

rem *** 1 - Status to know if it is enabled or disabled ***
PowerShell -Command "get-executionpolicy"

rem *** 2 - Enable execution script powershell ***
PowerShell -Command "set-ExecutionPolicy unrestricted"
