pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs() // Cleans the workspace to avoid residual files
            }
        }
        
        stage('Checkout Code') {
            steps {
                checkout scm // Pulls the latest code from the repository
            }
        }
        
        stage('Restore Dependencies') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    echo "Restoring dependencies for ${projectPath}"
                    bat "dotnet restore ${projectPath}" // Restore dependencies
                }
            }
        }
        
        stage('Build ConsoleApp1') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    echo "Building ${projectPath}"
                    bat "dotnet build ${projectPath} --configuration Release --no-restore" // Build the app
                }
            }
        }
        
        stage('Publish Artifacts') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    def outputDir = 'easydevops/frontend/ConsoleApp1/bin/Release/net9.0/' // Match your framework
                    echo "Publishing ${projectPath} to ${outputDir}"
                    bat "dotnet publish ${projectPath} -c Release -o ${outputDir}" // Publish output
                }
                archiveArtifacts artifacts: 'easydevops/frontend/ConsoleApp1/bin/Release/net9.0/**/*', fingerprint: true
            }
        }
        
        stage('Run Application (Optional)') {
            steps {
                script {
                    def exePath = 'easydevops/frontend/ConsoleApp1/bin/Release/net9.0/ConsoleApp1.exe'
                    echo "Running the built application: ${exePath}"
                    bat exePath // Optional: Run the app for testing
                }
            }
        }
    }
    
    post {
        always {
            echo 'Pipeline completed!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs for details.'
        }
    }
}
