# by bruno.cesar@outlook.it

# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# Executando DEFRAG HD
# equivalente: cmd admin: defrag C: /v
Optimize-Volume -DriveLetter C -Defrag -TierOptimize -Verbose