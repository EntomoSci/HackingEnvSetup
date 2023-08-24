Write-Host "Beginning Windows environment setup"

# NOTE: The cmdlet suite used to execute the Chocolatey install script is a slightly modified version of the official copy-paste command
# in their website (https://chocolatey.org/install#individual), using 'Invoke-WebRequest' (iwr) instead of System.Net.WebClient whose
# directly usage isn't recommended by Microsoft (https://learn.microsoft.com/en-us/dotnet/api/system.net.webclient?view=net-7.0#remark).
# I choosen an user-friendly interface of higher level for a simple process here.
Write-Host "Installing Chocolatey package manager from official installation script..."
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
(iwr -Uri 'https://community.chocolatey.org/install.ps1').Content | iex

Write-Host "Updating Chocolatey package manager..."
choco upgrade chocolatey -y

# NOTE: Instead of iterating over the tools line by line, they are stacked together in one line replacing Windows/Linux/Unix-like new lines
# characters into spaces to let choco do the parsing in one call.
Write-Host "Installing essential tools..."
$toolsURL = "https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Windows/Tools.txt"
$tools = (iwr -Uri $toolsURL) -replace '\n|`r`n|`n', ' '
choco install $tools
