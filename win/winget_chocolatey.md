<h1>Winget and Chocolatey Intro</h1>

<h2>Before starting let's prepare Windows</h2>
<h4>Enable execution script PowerShell: Open admin CMD run command:</h4>
<code><pre>
PowerShell -Command "set-ExecutionPolicy unrestricted"
</code></pre>
<h4>Install Chocolatey: Open admin CMD run command:</h4>
<code><pre>
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
</code></pre>
<p>Source: <br> https://community.chocolatey.org/ <br> https://chocolatey.org/install <br> https://youtu.be/SaXqT1fm6Js</p>

<h2>Winget Management</h2>
<pre><code>
winget install
winget uninstall
winget search
winget list
winget upgrade
winget upgrade --all
</code></pre>
<p>Source: <br> https://winstall.app/ <br> https://winget.run/ <br> https://youtu.be/OYF0hWHAicc</p>

<h2>Chocolatey Management</h2>
<pre><code>
choco install
choco uninstall
choco search
choco list
choco upgrade
choco upgrade all
</code></pre>

<h2>* Essential APPs</h2>
<pre><code>
winget install --id=7zip.7zip -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Mozilla.Firefox -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Foxit.FoxitReader -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements ;
winget install --id=TheDocumentFoundation.LibreOffice.LTS -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Skillbrains.Lightshot -e --accept-package-agreements --accept-source-agreements ;
winget install --id=RustDesk.RustDesk -e --accept-package-agreements --accept-source-agreements ;
winget install --id=VideoLAN.VLC -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.WindowsTerminal -e --accept-package-agreements --accept-source-agreements ;
</code></pre>
<pre><code>
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
</code></pre>

<h2>* Runtimes</h2>
<pre><code>
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
</code></pre>

<h2>* Dev</h2>
<pre><code>
choco install php -y
choco install flutter -y
winget install --id=Microsoft.VisualStudioCode -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Microsoft.VisualStudio.2022.Community -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Git.Git -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Google.AndroidStudio -e --accept-package-agreements --accept-source-agreements ;
winget install --id=ApacheFriends.Xampp.7.4 -e --accept-package-agreements --accept-source-agreements ;
</code></pre>

<h2>* Chat Communication</h2>
<pre><code>
winget install --id=Discord.Discord -e --accept-package-agreements --accept-source-agreements ;
winget install --id=Telegram.TelegramDesktop -e --accept-package-agreements --accept-source-agreements ;
winget install --id=BeeBEEP.BeeBEEP -e --accept-package-agreements --accept-source-agreements ;
</code></pre>