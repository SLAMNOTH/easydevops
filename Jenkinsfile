pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/SLAMNOTH/easydevops.git'
            }
        }
        stage('Restore') {
            steps {
                echo 'Restoring dependencies...'
                bat 'dotnet restore easydevops/frontend/ConsoleApp1/ConsoleApp1/ConsoleApp1.csproj'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the project...'
                bat 'dotnet build easydevops/frontend/ConsoleApp1/ConsoleApp1/ConsoleApp1.csproj --configuration Debug'
            }
        }
        stage('Run') {
            steps {
                echo 'Running the application...'
                bat 'dotnet run --project easydevops/frontend/ConsoleApp1/ConsoleApp1/ConsoleApp1.csproj'
            }
        }
        stage('Done') {
            steps {
                echo 'Pipeline executed successfully!'
            }
        }
    }
}
