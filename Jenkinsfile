pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git clone https://github.com/SLAMNOTH/easydevops.git
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

