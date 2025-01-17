pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/SLAMNOTH/easydevops.git'
            }
        }
        stage('Run') {
            steps {
                echo 'Running the console application...'
                bat 'dotnet run --project easydevops/frontend/ConsoleApp1/ConsoleApp1'
            }
        }
        stage('Done') {
            steps {
                echo 'Application ran successfully!'
            }
        }
    }
}
