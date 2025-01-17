pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs() // Cleans the workspace before starting
            }
        }
        
        stage('Checkout Code') {
            steps {
                checkout scm // Clones your repository
            }
        }
        
        stage('Restore Dependencies') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    bat "dotnet restore ${projectPath}" // Restore dependencies
                }
            }
        }
        
        stage('Build') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    bat "dotnet build ${projectPath} --configuration Release --no-restore" // Build the app
                }
            }
        }
        
        stage('Run Tests') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    bat "dotnet test ${projectPath} --no-restore --verbosity normal" // Run tests (if any)
                }
            }
        }
        
        stage('Publish Artifacts') {
            steps {
                script {
                    def projectPath = 'easydevops/frontend/ConsoleApp1/ConsoleApp1.csproj'
                    def outputDir = 'easydevops/frontend/ConsoleApp1/bin/Release/net8.0/'
                    bat "dotnet publish ${projectPath} -c Release -o ${outputDir}" // Publish the app
                }
                archiveArtifacts artifacts: 'easydevops/frontend/ConsoleApp1/bin/Release/net8.0/**/*', fingerprint: true
            }
        }
        
        stage('Run Application (Optional)') {
            steps {
                script {
                    def exePath = 'easydevops/frontend/ConsoleApp1/bin/Release/net8.0/ConsoleApp1.exe'
                    bat exePath // Runs the app if needed (for testing purposes)
                }
            }
        }
    }
    
    post {
        always {
            echo 'Pipeline execution completed!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
