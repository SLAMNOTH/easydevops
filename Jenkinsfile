pipeline {
    agent any

        stages {
        stage('Clone') {
            steps {
                // Correct git directive for cloning
                git branch: 'main', url: 'https://github.com/SLAMNOTH/easydevops.git'
            }
        }
        stage('Run') {
            steps {
                dotnet run --project easydevops/frontend/MyConsoleApp
            }
        }
        stage('Done') {
            steps {
                echo 'Application ran successfully!'
            }
        }
    }
}

