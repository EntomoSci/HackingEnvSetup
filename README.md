# HackingEnvSetup
Collection of scripts for the setup of my hacking environment.

## Usage

### For Linux environments
Download the setup script from the raw version of the file:
   ```sh
   curl -sO https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Linux/Setup.sh
   ```
Change its permissions and make the script executable:
```sh
chmod 744 ./Setup.sh
```
Run the script with `source` to get the changes immediately available in your current shell session:
```sh
source ./Setup.sh
```

### For Windows environments
Open a command prompt and update your powershell to support modern syntax present in commands used:
```cmd
winget install --id Microsoft.Powershell --source winget
```
Open a powershell session as administrator and download the script to update the system:
```powershell
iwr -Uri 'https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Windows/Update.ps1' -OutFile 'WindowsUpdate.ps1'
```
Verify the integrity of the script and execute it afterwards:
```powershell
.\WindowsUpdate.ps1
```
Accept the restart of the computer if the script ask you to do it at the end or do it manually if not to apply the changes:
```powershell
Restart-Computer -Force
```
After the restart, download the setup script to install the essential tools:
```powershell
iwr -Uri 'https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Windows/Setup.ps1' -OutFile 'WindowsSetup.ps1'
```
Verify the integrity of the script and execute it afterwards:
```powershell
.\WindowsSetup.ps1
```
