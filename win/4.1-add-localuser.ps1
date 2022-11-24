# by bruno.cesar@outlook.it
# Fonte: https://learn.microsoft.com/pt-br/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1

# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# Adicionando novo usuario local
New-LocalUser -Name "user" -Description "usuario comum !" -AccountNeverExpires -UserMayNotChangePassword -PasswordNeverExpires
# Esse comando cria uma conta de usuário local e não especifica os parâmetros AccountExpires ou Password . Portanto, a conta não expira ou tem uma senha por padrão.