# by bruno.cesar@outlook.it
# Fonte: https://powershell-guru.com/powershell-tip-40-restart-print-spooler-service/

# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# Restart print spooler service
Restart-Service -Name Spooler -Force

# Stop print spooler service
# Stop-Service -Name Spooler -Force

# To delete the files
# Remove-Item -Path "$env:SystemRoot\System32\spool\PRINTERS\*.*"

# Start print spooler service
# Start-Service -Name Spooler