#Installeer .NET SDK 8 en git
sudo dnf install dotnet-sdk-8.0 git -y

#Clone de repo
git clone https://github.com/brammiddendorp/EasyDevOps.git

#Run de applicatie
dotnet run --project EasyDevOps/frontend/MyConsoleApp