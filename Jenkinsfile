pipeline {
    agent { label 'windows' }  // Assuming your Jenkins agent is labeled 'windows'

    environment {
        DOTNET_HOME = 'C:\\Program Files\\dotnet'  // Adjust if needed
        PATH = "${env.DOTNET_HOME};${env.PATH}"  // Ensure the dotnet command is available
    }

    stages {
        stage('Clean workspace') {
            steps {
                cleanWs()  // Clean the workspace
            }
        }

        stage('Checkout SCM') {
            steps {
                checkout scm  // Checkout the code from Git
            }
        }

        stage('Restore dependencies') {
            steps {
                script {
                    echo 'Restoring dependencies...'
                    bat 'dotnet restore easydevops\\frontend\\EasyDevOps.csproj'  // Restore dependencies
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    echo 'Building the .NET application...'
                    bat 'dotnet build easydevops\\frontend\\EasyDevOps.csproj'  // Build the application
                }
            }
        }

        stage('Run') {
            steps {
                script {
                    echo 'Running the .NET application...'
                    bat 'dotnet run --project easydevops\\frontend\\EasyDevOps.csproj'  // Run the application
                }
            }
        }

        stage('Publish') {
            steps {
                script {
                    echo 'Publishing the .NET application...'
                    bat 'dotnet publish easydevops\\frontend\\EasyDevOps.csproj --configuration Release --output ./publish'  // Publish the app
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Build and deploy completed successfully.'
        }
        failure {
            echo 'Build or deploy failed.'
        }
    }
}
