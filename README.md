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
Open a powershell session as administrator and update the system with the dedicated script:
```powershell
iwr -Uri 'https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Windows/Update.ps1' -OutFile 'Update.ps1' && .\Update.ps1
```
