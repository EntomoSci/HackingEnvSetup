#!/bin/bash
# Setting up the prompt.
echo "Remote execution of prompt customization script..."
curl -s https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Prompt.sh | bash
source ~/.bashrc
