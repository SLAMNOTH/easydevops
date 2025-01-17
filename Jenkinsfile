pipeline {
    agent any

    stages {
        stage('Restore') {
            steps {
                script {
                    echo "Restoring dependencies..."
                    // Restore .NET dependencies
                    bat 'dotnet restore easydevops\\frontend\\EasyDevOps.csproj'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    echo "Building the .NET application..."
                    // Build the .NET application
                    bat 'dotnet build easydevops\\frontend\\EasyDevOps.csproj --configuration Release'
                }
            }
        }

        stage('Run') {
            steps {
                script {
                    echo "Running the .NET application..."
                    // Run the application
                    bat 'dotnet easydevops\\frontend\\bin\\Release\\net8.0\\EasyDevOps.dll'
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline finished."
        }
    }
}
