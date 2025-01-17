#!/bin/bash

# Installeer .NET SDK 8
wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --version 8.0.100

# Voeg .NET toe aan PATH
export PATH=$PATH:$HOME/.dotnet

# Installeer Git (Linux)
sudo apt-get update
sudo apt-get install -y git

# Clone de repo
git clone https://github.com/SLAMNOTH/easydevops.git
cd EasyDevOps/frontend

# Run de app
dotnet run
