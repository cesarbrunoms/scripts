# by bruno.cesar@outlook.it


# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# Mostra todas as interfaces de rede disposiveis no computador 
# SHOW Interfaces... 
NETSH interface show interface 
 
 
# Desativa o Wi-Fi do computador 
# Desable Wi-Fi... 
NETSH interface set interface name=Wi-Fi admin=DISABLE 
 
# Ativa o Wi-Fi do computador 
# Enable Wi-Fi... 
NETSH interface set interface name=Wi-Fi admin=ENABLE 
 
 
# Desativa a interface cabo de rede do computador 
# Desable Ethernet... 
NETSH interface set interface name=Ethernet admin=DISABLE 
 
# Ativa a interface cabo de rede do computador 
# Enable Ethernet... 
NETSH interface set interface name=Ethernet admin=ENABLE 
