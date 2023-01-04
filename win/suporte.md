<h1>Suporte</h1>

<h3>Enable execution script PowerShell: Open admin CMD run command:</h3>

```shell
PowerShell -Command "set-ExecutionPolicy unrestricted"  

```

<h3>Add Credential</h3>

~~~shell
cmdkey /add:192.168.0.34 /user:padrao /pass:123456  

~~~

<h3>Enable Administrador user</h3>

~~~shell
net user administrador /active:yes  

~~~

<h3>Rename Computer</h3>

~~~shell
Write-Host "Rename Computer"
$RENAME = Read-Host "escreva nome do computador"
Rename-Computer -NewName $RENAME
-Restart  

~~~

<h3>CHKDSK</h3>

~~~shell
chkdsk c: /r  

~~~

<h3>SFC / DISM</h3>

~~~shell
sfc /scannow
DISM /Online /Cleanup-image /Restorehealth  

~~~

<h3>Update User Policy</h3>

~~~shell
gpupdate /force  

~~~

<h3>Refresh Interface Network</h3>

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

