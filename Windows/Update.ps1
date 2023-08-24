Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process && `
Install-Module PSWindowsUpdate && `
Import-Module PSWindowsUpdate && `
Install-WindowsUpdate -AcceptAll
