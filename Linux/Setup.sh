#!/bin/bash

sudo apt update

# Setting up the prompt.
echo "Making backup of ~/.bashrc..."
cp ~/.bashrc ~/.bashrc.bak
echo "Updating PS1 environment variable (prompt) & adding changes to ~/.bashrc..."
echo 'export PS1="[\[$(tput sgr0)\]\[\033[38;5;10m\]\d\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;10m\]\t\[$(tput sgr0)\]]-[\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;196m\]\h\[$(tput sgr0)\]]-[\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]]\n\\$ \[$(tput sgr0)\]"' >> ~/.bashrc
source ~/.bashrc
echo "Done!"

# Installing esential tools.
toolsURL="https://raw.githubusercontent.com/typ1st/HackingEnvSetup/main/Tools.list"
tools=$(curl -s $toolsURL)
echo "Installing esential tools..."
for tool in $tools
  do sudo apt install $tool -y
done
echo "Esential tools successfully installed!"
