# by bruno.cesar@outlook.it

# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# Install Runtimes
Write-Output "Install Runtimes !"
winget install --id=Microsoft.dotNetFramework -e ; winget install --id=Microsoft.DotNet.Runtime.5 -e ; winget install --id=Microsoft.DotNet.Runtime.6 -e ; winget install --id=Microsoft.DotNet.Runtime.7 -e ; winget install --id=Microsoft.VCRedist.2005.x64 -e ; winget install --id=Microsoft.VCRedist.2008.x64 -e ; winget install --id=Microsoft.VCRedist.2010.x64 -e ; winget install --id=Microsoft.VCRedist.2012.x64 -e ; winget install --id=Microsoft.VCRedist.2013.x64 -e ; winget install --id=Microsoft.VCRedist.2015+.x64 -e ; winget install --id=Oracle.JavaRuntimeEnvironment -e
# Install Essential APPs
Write-Output "Install Essential APPs !"
winget install --id=Google.Chrome -e ; winget install --id=Mozilla.Firefox -e ; winget install --id=VideoLAN.VLC -e ; winget install --id=Microsoft.WindowsTerminal -e ; winget install --id=7zip.7zip -e ; winget install --id=TheDocumentFoundation.LibreOffice.LTS -e ; winget install --id=AnyDeskSoftwareGmbH.AnyDesk -e ; winget install --id=Skillbrains.Lightshot -e ; winget install --id=GlavSoft.TightVNC -e