-------------------------------------------------------------------------------
<h1>Suporte</h1>
<div>
Source: <br> 
<a href="https://drive.google.com/drive/folders/1QjqTl54HSL6prjwktyvCKqzsRAjF1QN5?usp=sharing" target="_blank">Google Drive</a><br>
</div><br>
  
<details><summary>Enable execution script PowerShell: Open admin CMD run command:</summary>
 
 ~~~shell
PowerShell -Command "set-ExecutionPolicy unrestricted"  

~~~  
</details>


<details><summary>Add Credential</summary>
 
 ~~~shell
cmdkey /add:192.168.0.34 /user:padrao /pass:123456  

~~~
</details>


<details><summary>Enable Administrador user</summary>

~~~shell
net user administrador /active:yes  

~~~
</details>


<details><summary>Rename Computer</summary>

~~~shell
Write-Host "Rename Computer"
$RENAME = Read-Host "escreva nome do computador"
Rename-Computer -NewName $RENAME
-Restart  

~~~
</details>


<details><summary>CHKDSK</summary>

~~~shell
chkdsk c: /r  

~~~
</details>


<details><summary>Defrag Windows</summary>

~~~shell
# Executando DEFRAG HD
# equivalente: cmd admin: defrag C: /v
Optimize-Volume -DriveLetter C -Defrag -TierOptimize -Verbose  
  
~~~

~~~shell
# Executando DEFRAG SSD
Optimize-Volume -DriveLetter C -ReTrim -Verbose  
  
~~~
</details>


<details><summary>SFC / DISM</summary>

~~~shell
sfc /scannow
DISM /Online /Cleanup-image /Restorehealth  

~~~
</details>


<details><summary>Update User Policy</summary>

~~~shell
gpupdate /force  

~~~
</details>


<details><summary>Restart print spooler service</summary>

~~~shell
# Stop print spooler service
Stop-Service -Name Spooler -Force

# To delete the files
Remove-Item -Path "$env:SystemRoot\System32\spool\PRINTERS\*.*"

# Start print spooler service
Start-Service -Name Spooler

# Restart print spooler service
Restart-Service -Name Spooler -Force  
  
~~~
</details>


<details><summary>Refresh Interface Network</summary>

~~~shell
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

~~~
</details>


<details><summary>Network Folder Mapping</summary>

~~~shell
#\\samba-02\semsau
New-PSDrive –Name “V” –PSProvider FileSystem –Root “\\samba-02\semsau” –Persist  

~~~

~~~shell
#\\arquivos-ad\semsau-fms$
New-PSDrive –Name “W” –PSProvider FileSystem –Root “\\arquivos-ad\semsau-fms$” –Persist
~~~

~~~shell
#\\arquivos-ad\semsau-pad$
New-PSDrive –Name “X” –PSProvider FileSystem –Root “\\arquivos-ad\semsau-pad$” –Persist  

~~~

~~~shell
#\\arquivos-ad\semsau-atencao-basica$
New-PSDrive –Name “Y” –PSProvider FileSystem –Root “\\arquivos-ad\semsau-atencao-basica$” –Persist  

~~~

~~~shell
#\\srv-arquivos-02\semsau-visa$
New-PSDrive –Name “Z” –PSProvider FileSystem –Root “\\srv-arquivos-02\semsau-visa$” –Persist  

~~~
</details>


<details><summary>Tweaks</summary>

~~~shell
# *** Desabilitar hibernação HD/SSD e demais configs de energia***
# Esquema Balanceado
powercfg -SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e
# Marcando configurações na bateria como nunca
powercfg.exe -change -monitor-timeout-dc 0
powercfg.exe -change -standby-timeout-dc 0
powercfg.exe -change -hibernate-timeout-dc 0
# Marcando configurações na tomada como nunca
powercfg.exe -change -monitor-timeout-ac 0
powercfg.exe -change -standby-timeout-ac 0
powercfg.exe -change -hibernate-timeout-ac 0
# Não mexer no brilho do monitor
powercfg -SETDCVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -SETACVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
# Ao fechar a tampa. Na tomada nada e na bateria adormecer
powercfg -SETACVALUEINDEX SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -SETDCVALUEINDEX SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 3
# Ao apertar o botão de desligar, desligar e não adormecer
powercfg -SETACVALUEINDEX SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -SETDCVALUEINDEX SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
# Desabilitar hibernação de HD/SSD
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg /SETACVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0

# *** Habilitar Modo Escuro ***
reg ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D 0 /F

# *** Desabilitar Esconder itens na bandeja do sistema ***
reg ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoAutoTrayNotify /d 1 /t REG_DWORD /f

# *** Habilitar todos os icones na tray***
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explore" /v "EnableAutoTray" /t REG_DWORD /d 0 /f

# *** Tirar animações inuteís ***
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "VisualFXSetting" /t REG_DWORD /d 3 /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 9032078010000000 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" REG_SZ /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V "DisablePreviewDesktop" /T REG_DWORD /D 0 /F
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM " /V "DisablePreviewDesktop" /T REG_DWORD /D 0 /F
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V "IconsOnly" /T REG_DWORD /D 1 /F
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V "ListviewAlphaSelect" /T REG_DWORD /D 1 /F
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "DragFullWindows" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d 2 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V "ListviewShadow" /T REG_DWORD /D 1 /F
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /V "AlwaysHibernateThumbnails" /T REG_DWORD /D 0 /F

# *** Desabilitar Transparencias e efeitos de cores ***
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 0 /f
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 0 /f
Reg Add "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoColorization /t REG_DWORD /d 0 /f

# *** Mostrar extensões de arquivos no Explorer ***
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f

# *** Desabilitar Apps em Segundo Plano ***
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d 2 /f

# *** Tweaks variados de privacidade ***
PowerShell -Command "Set-WindowsSearchSetting -EnableWebResultsSetting $false"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 0 /f
reg add "SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "Type" /t REG_SZ /d LooselyCoupled /f
reg add "SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "Value" /t REG_SZ /d Deny /f
reg add "SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "InitialAppValue" /t REG_SZ /d Unspecified /f
reg add "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /v "WiFiSenseCredShared" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /v "WiFiSenseOpen" /t REG_DWORD /d 0 /f

# *** Desabilitar historico de atividades ***
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v PublishUserActivities /t REG_DWORD /d 0 /f

# *** Desabilitar Histórico do Acesso Rápido ***
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3936E9E4-D92C-4EEE-A85A-BC16D5EA0819}" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3936E9E4-D92C-4EEE-A85A-BC16D5EA0819}" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /f

# *** Desabilitar busca Web na barra de Pesquisa ***
reg ADD "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /d 1 /t REG_DWORD /f  

~~~
</details>

-------------------------------------------------------------------------------

<h1>Winget and Chocolatey</h1>

<details><summary>Install Chocolatey: Open admin CMD run command:</summary>

~~~shell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))  

~~~
<p>Source: <br> https://community.chocolatey.org/ <br> https://chocolatey.org/install <br> https://youtu.be/SaXqT1fm6Js</p>
</details>


<details><summary>Winget Management</summary>

~~~shell
winget install
winget uninstall
winget search
winget list
winget upgrade
winget upgrade --all
~~~
<p>Source: <br> https://winstall.app/ <br> https://winget.run/ <br> https://youtu.be/OYF0hWHAicc</p>
</details>


<details><summary>Chocolatey Management</summary>

~~~shell
choco install
choco uninstall
choco search
choco list
choco upgrade
choco upgrade all
~~~
</details>


<details><summary>Essential APPs</summary>

~~~shell
winget install --id=7zip.7zip -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Mozilla.Firefox -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Foxit.FoxitReader -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements ;
winget install --id=TheDocumentFoundation.LibreOffice.LTS -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Skillbrains.Lightshot -e --accept-package-agreements --accept-source-agreements ;
winget install --id=RustDesk.RustDesk -e --accept-package-agreements --accept-source-agreements ;
winget install --id=VideoLAN.VLC -e --accept-package-agreements --accept-source-agreements ;  

~~~

~~~shell
winget install --id=Adobe.Acrobat.Reader.64-bit -e --accept-package-agreements --accept-source-agreements ;
winget install --id=AnyDeskSoftwareGmbH.AnyDesk -e --accept-package-agreements --accept-source-agreements ;
winget install --id=ByteDance.CapCut -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Dropbox.Dropbox -e --accept-package-agreements --accept-source-agreements ;
winget install --id=GlavSoft.TightVNC -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.PowerToys -e --accept-package-agreements --accept-source-agreements ;
winget install --id=MiniTool.PartitionWizard.Free -e --accept-package-agreements --accept-source-agreements ;
winget install --id=OBSProject.OBSStudio -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Oracle.VirtualBox -e --accept-package-agreements --accept-source-agreements ;
winget install --id=ShareX.ShareX -e --accept-package-agreements --accept-source-agreements ;
winget install --id=RealVNC.VNCViewer -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Rufus.Rufus -e --accept-package-agreements --accept-source-agreements ;
winget install --id=TeamViewer.TeamViewer -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Transmission.Transmission -e --accept-package-agreements --accept-source-agreements ;
winget install --id=uGetdm.uGet -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Valve.Steam -e --accept-package-agreements --accept-source-agreements ;
winget install --id=WinSCP.WinSCP -e --accept-package-agreements --accept-source-agreements ;  

~~~
</details>


<details><summary>Runtimes</summary>

~~~shell
winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.DotNet.Runtime.5 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.DotNet.Runtime.6 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.DotNet.Runtime.7 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VCRedist.2005.x64 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VCRedist.2008.x64 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VCRedist.2010.x64 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VCRedist.2012.x64 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VCRedist.2013.x64 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VCRedist.2015+.x64 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Oracle.JavaRuntimeEnvironment -e --accept-package-agreements --accept-source-agreements ;  

~~~
</details>


<details><summary>Dev</summary>

~~~shell
choco install php -y
choco install flutter -y
winget install --id=Microsoft.VisualStudioCode -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VisualStudio.2022.Community -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Git.Git -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Google.AndroidStudio -e --accept-package-agreements --accept-source-agreements ;
winget install --id=ApacheFriends.Xampp.8.1 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=ApacheFriends.Xampp.7.4 -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Notepad++.Notepad++ -e --accept-package-agreements --accept-source-agreements ;  

~~~
</details>


<details><summary>Chat Communication</summary>

~~~shell
winget install --id=Discord.Discord -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Telegram.TelegramDesktop -e --accept-package-agreements --accept-source-agreements ;
winget install --id=BeeBEEP.BeeBEEP -e --accept-package-agreements --accept-source-agreements ;  

~~~
</details>

