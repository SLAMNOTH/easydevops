pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                // Cloning the repository
                git branch: 'main', url: 'https://github.com/SLAMNOTH/easydevops.git'
            }
        }
        stage('Restore Dependencies') {
            steps {
                // Restoring .NET dependencies
                bat 'dotnet restore easydevops/frontend/MyConsoleApp/MyConsoleApp.csproj'
            }
        }
        stage('Build') {
            steps {
                // Building the project
                bat 'dotnet build easydevops/frontend/MyConsoleApp/MyConsoleApp.csproj'
            }
        }
        stage('Run') {
            steps {
                // Running the .NET project
                bat 'dotnet run --project easydevops/frontend/MyConsoleApp/MyConsoleApp.csproj'
            }
        }
        stage('Done') {
            steps {
                echo 'Application ran successfully!'
            }
        }
    }
}
