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

<h3>Network Folder Mapping</h3>

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


