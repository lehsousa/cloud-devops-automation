# set-homepage.ps1
# Script para configurar a homepage padrão do Microsoft Edge via registro

$homePage = "https://www.seusite.com.br"

# Define chave para Edge
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -Name "HomepageLocation" -Value $homePage
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -Name "RestoreOnStartup" -Value 4
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -Name "RestoreOnStartupURLs" -Value $homePage

Write-Output "Homepage do Edge definida para: $homePage"
