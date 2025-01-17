pipeline {
    agent any
    environment {
        DOTNET_ROOT = 'C:\\Program Files\\dotnet' // Correct Windows path
        PATH = "${env.PATH};${env.DOTNET_ROOT}" // Add .NET to PATH
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                // Print the directory structure to ensure everything is checked out correctly
                bat 'dir /s'
            }
        }
        stage('Build') {
            steps {
                script {
                    echo 'Building the .NET application...'
                    bat 'dotnet build easydevops\\frontend\\EasyDevOps.csproj'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Running tests...'
                    bat 'dotnet test easydevops\\frontend\\EasyDevOps.csproj'
                }
            }
        }
        stage('Publish') {
            steps {
                script {
                    echo 'Publishing the .NET application...'
                    bat 'dotnet publish easydevops\\frontend\\EasyDevOps.csproj -c Release -o output'
                }
            }
        }
    }
}
