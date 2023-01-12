##########
# Win10 Initial Setup Script
# Author: cesarbrunoms <bruno.cesar@outlook.it>
# Version: 1.8, 2023-01-11
##########

# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	# Enable execution script PowerShell
	Start-Process powershell.exe "-command set-ExecutionPolicy unrestricted"
	Exit
}


function DisplayMenu {
	Clear-Host
	Write-Host
	(Get-Date).ToString("dd/MM/yyyy")
	Write-Host "Computador:" $env:computername
	Write-Host "Usuario:" $env:username
	Write-Host
	Write-Host @"
+--------------------------------- DTI PMA ---------------------------------+
|                                     |                                     |
| 1. Instalar PACK Essencial APPs     | 3. Add Credencial Publica           | 
|    a. 7-Zip                         |                                     |
|    b. Firefox                       | 4. Habilitar User Administrador     |
|    c. Foxit Reader                  |                                     |
|    d. Google Chrome                 | 5. Renomear Computador -> Restart   | 
|    e. LibreOffice LTS               |                                     |
|    f. Lightshot                     | 6. CHKDSK -> Restart                |
|    g. RustDesk                      |                                     |
|    h. VLC                           | 7. SFC and DISM                     | 
|                                     |                                     |
| 2. Instalar PACK Essencial Runtimes | 8. Atualizar Politica Usuario       |
|    i. DotNet Runtime 4              |                                     |
|    j. DotNet Runtime 5              | 9. Refresh Interfaces Rede          |
|    k. DotNet Runtime 6              |                                     |
|    l. DotNet Runtime 7              | 10. Exit                            |
|    m. VCRdist 2005                  |                                     |
|    n. VCRdist 2008                  |                                     |
|    o. VCRdist 2010                  |                                     |
|    p. VCRdist 2012                  |                                     |
|    q. VCRdist 2013                  |                                     |
|    r. VCRdist 2015+                 |                                     |
|    s. Java 8 JDK                    |                                     |
|                                     |                                     |
+---------------------------------------------------------------------------+
"@

	
	function install_7zip {
		# Verificar se o 7-Zip está presente na lista de pacotes
		$result = winget list | Select-String 7-Zip

		# Se o 7-Zip não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=7zip.7zip -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "7-Zip is already installed!"
		}
	}
	function install_firefox {
		# Verificar se o Firefox está presente na lista de pacotes
		$result = winget list | Select-String Firefox

		# Se o Firefox não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Mozilla.Firefox -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Firefox is already installed!"
		}
	}
	function install_foxitReader {
		# Verificar se o FoxitReader está presente na lista de pacotes
		$result = winget list | Select-String FoxitReader

		# Se o FoxitReader não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Foxit.FoxitReader -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "FoxitReader is already installed!"
		}
	}
	function install_chrome {
		# Verificar se o Google Chrome está presente na lista de pacotes
		$result = winget list | Select-String Chrome

		# Se o Google Chrome não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Google Chrome is already installed!"
		}
	}
	function install_libreOffice {
		# Verificar se o LibreOffice está presente na lista de pacotes
		$result = winget list | Select-String LibreOffice

		# Se o LibreOffice não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=TheDocumentFoundation.LibreOffice.LTS -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "LibreOffice is already installed!"
		}		
	}
	function install_lighshot {
		# Verificar se o Lightshot está presente na lista de pacotes
		$result = winget list | Select-String Lightshot

		# Se o Lightshot não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Skillbrains.Lightshot -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Lightshot is already installed!"
		}
	}
	function install_rustDesk {
		# Verificar se o RustDesk está presente na lista de pacotes
		$result = winget list | Select-String RustDesk

		# Se o RustDesk não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=RustDesk.RustDesk -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "RustDesk is already installed!"
		}
	}
	function install_vlc {
		# Verificar se o VLC está presente na lista de pacotes
		$result = winget list | Select-String VLC

		# Se o VLC não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=VideoLAN.VLC -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "VLC is already installed!"
		}
	}
	function install_dotNet4 {
		# Verificar se o DotNet Runtime 4 está presente na lista de pacotes
		$result = winget list | Select-String DotNet.Framework

		# Se o DotNet Runtime 4 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "DotNet Runtime 4 is already installed!"
		}
	}
	function install_dotNet5 {
		# Verificar se o DotNet Runtime 5 está presente na lista de pacotes
		$result = winget list | Select-String Runtime.5

		# Se o DotNet Runtime 5 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.DotNet.Runtime.5 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "DotNet Runtime 5 is already installed!"
		}
	}
	function install_dotNet6 {
		# Verificar se o DotNet Runtime 6 está presente na lista de pacotes
		$result = winget list | Select-String Runtime.6

		# Se o DotNet Runtime 6 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.DotNet.Runtime.6 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "DotNet Runtime 6 is already installed!"
		}
	}
	function install_dotNet7 {
		# Verificar se o DotNet Runtime 7 está presente na lista de pacotes
		$result = winget list | Select-String Runtime.7

		# Se o DotNet Runtime 7 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.DotNet.Runtime.7 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "DotNet Runtime 7 is already installed!"
		}
	}
	function install_visual2005 {
		# Verificar se o Visual C++ 2005 está presente na lista de pacotes
		$result = winget list | Select-String VCRedist.2005

		# Se o Visual C++ 2005 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.VCRedist.2005.x64 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Visual C++ 2005 is already installed!"
		}
	}
	function install_visual2008 {
		# Verificar se o Visual C++ 2008 está presente na lista de pacotes
		$result = winget list | Select-String VCRedist.2008

		# Se o Visual C++ 2008 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.VCRedist.2008.x64 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Visual C++ 2008 is already installed!"
		}
	}
	function install_visual2010 {
		# Verificar se o Visual C++ 2010 está presente na lista de pacotes
		$result = winget list | Select-String VCRedist.2010

		# Se o Visual C++ 2010 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.VCRedist.2010.x64 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Visual C++ 2010 is already installed!"
		}
	}
	function install_visual2012 {
		# Verificar se o Visual C++ 2012 está presente na lista de pacotes
		$result = winget list | Select-String VCRedist.2012

		# Se o Visual C++ 2012 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.VCRedist.2012.x64 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Visual C++ 2012 is already installed!"
		}
	}
	function install_visual2013 {
		# Verificar se o Visual C++ 2013 está presente na lista de pacotes
		$result = winget list | Select-String VCRedist.2013

		# Se o Visual C++ 2013 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.VCRedist.2013.x64 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Visual C++ 2013 is already installed!"
		}
	}
	function install_visual2015 {
		# Verificar se o Visual C++ 2015 está presente na lista de pacotes
		$result = winget list | Select-String VCRedist.2015

		# Se o Visual C++ 2015 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Microsoft.VCRedist.2015+.x64 -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Visual C++ 2015 is already installed!"
		}
	}
	function install_java8JDK {
		# Verificar se o Java 8 está presente na lista de pacotes
		$result = winget list | Select-String Oracle.JavaRuntimeEnvironment

		# Se o Java 8 não estiver presente na lista, instalá-lo
		if (-not $result) {
			winget install --id=Oracle.JavaRuntimeEnvironment -e --accept-package-agreements --accept-source-agreements ;
		}
		else {
			Write-Host "Java 8 is already installed!"
		}
	}

	$MENU = Read-Host "OPTION"
	Switch ($MENU) {
		default {
			# -================> DEFAULT OPTION
			Write-Host "Option not available"
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		10 {
			#OPTION - EXIT
			Break
		}
		1 {
			# -================> OPTION - 1. Install PACK Essential APPs
			Clear-Host
			install_7zip
			install_firefox
			install_foxitReader
			install_chrome
			install_libreOffice
			install_lighshot
			install_rustDesk
			install_vlc
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		2 {
			# -================> OPTION - 2. Install PACK Essential Runtimes
			Clear-Host
			install_dotNet4
			install_dotNet5
			install_dotNet6
			install_dotNet7
			install_visual2005
			install_visual2008
			install_visual2010
			install_visual2012
			install_visual2013
			install_visual2015
			install_java8JDK
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		A {
			# -================> OPTION - A. 7-Zip
			Clear-Host
			install_7zip
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		B {
			# -================> OPTION - B. Firefox
			Clear-Host
			install_firefox
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		C {
			# -================> OPTION - C. Foxit Reader
			Clear-Host
			install_foxitReader
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		D {
			# -================> OPTION - D. Google Chrome
			Clear-Host
			install_chrome
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		E {
			# -================> OPTION - E. LibreOffice LTS
			Clear-Host
			install_libreOffice
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		F {
			# -================> OPTION - F. Lightshot
			Clear-Host
			install_lighshot
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		G {
			# -================> OPTION - G. RustDesk
			Clear-Host
			install_rustDesk
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		H {
			# -================> OPTION - H. VLC
			Clear-Host
			install_vlc
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		I {
			# -================> OPTION - I. DotNet Runtime 4
			Clear-Host
			install_dotNet4
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		J {
			# -================> OPTION - J. DotNet Runtime 5
			Clear-Host
			install_dotNet5
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		K {
			# -================> OPTION - K. DotNet Runtime 6
			Clear-Host
			install_dotNet6
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		L {
			# -================> OPTION - L. DotNet Runtime 7
			Clear-Host
			install_dotNet7
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		M {
			# -================> OPTION - M. VCRdist 2005
			Clear-Host
			install_visual2005
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		N {
			# -================> OPTION - N. VCRdist 2008
			Clear-Host
			install_visual2008
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		O {
			# -================> OPTION - O. VCRdist 2010
			Clear-Host
			install_visual2010
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		P {
			# -================> OPTION - P. VCRdist 2012
			Clear-Host
			install_visual2012
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		Q {
			# -================> OPTION - Q. VCRdist 2013
			Clear-Host
			install_visual2013
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		R {
			# -================> OPTION - R. VCRdist 2015+
			Clear-Host
			install_visual2015
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		S {
			# -================> OPTION - S. Java 8 JDK
			Clear-Host
			install_java8JDK
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		3 {
			# -================> OPTION - 3. Add Credential Publica
			Clear-Host
			cmdkey /add:192.168.0.34 /user:padrao /pass:123456
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		4 {
			# -================> OPTION - 4. Enable Administrador user
			Clear-Host
			net user administrador /active:yes
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		5 {
			# -================> OPTION - 5. Rename Computer -> Restart
			Clear-Host
			Write-Host "Rename Computer"
			$RENAME = Read-Host "escreva nome do computador"
			Rename-Computer -NewName $RENAME
			-Restart
		}
		6 {
			# -================> OPTION - 6. CHKDSK -> Restart
			Clear-Host
			#chkdsk
			chkdsk c: /r
			#Repair-Volume -DriveLetter C -OfflineScanAndFix
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		7 {
			# -================> OPTION - 7. SFC and DISM
			Clear-Host
			#sfc
			sfc /scannow

			#dism
			DISM /Online /Cleanup-image /Restorehealth
			#Repair-WindowsImage -Online -StartComponentCleanup -RestoreHealth
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		8 {
			# -================> OPTION - 8. Update User Policy
			Clear-Host
			gpupdate /force			
			Start-Sleep -Seconds 4
			DisplayMenu
		}
		9 {
			# -================> OPTION - 9. Refresh Interface Network
			Clear-Host
			#flushdns
			ipconfig /flushdns

			#release
			ipconfig /release

			#renew
			ipconfig /renew

			# Desable Wi-Fi... 
			NETSH interface set interface name=Wi-Fi admin=DISABLE 
 
			# Enable Wi-Fi... 
			NETSH interface set interface name=Wi-Fi admin=ENABLE 
 
			# Desable Ethernet... 
			NETSH interface set interface name=Ethernet admin=DISABLE 
 
			# Enable Ethernet... 
			NETSH interface set interface name=Ethernet admin=ENABLE
			Start-Sleep -Seconds 4
			DisplayMenu
		}																							
	}
}
DisplayMenu