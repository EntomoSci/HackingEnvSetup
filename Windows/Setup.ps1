Write-Host "Beginning Windows environment setup"

# NOTE: The cmdlet suite used to execute the Chocolatey install script is a slightly modified version of the official copy-paste command
# in their website (https://chocolatey.org/install#individual), using 'Invoke-WebRequest' (iwr) instead of System.Net.WebClient whose
# directly usage isn't recommended by Microsoft (https://learn.microsoft.com/en-us/dotnet/api/system.net.webclient?view=net-7.0#remark).
# I choosen an user-friendly interface of higher level for a simple process here.
Write-Host "Installing Chocolatey package manager from official installation script..."
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
(iwr -Uri 'https://community.chocolatey.org/install.ps1').Content | iex
