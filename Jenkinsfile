pipeline {
    agent any

    environment {
        PYTHON_VERSION = 'python3'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/bhaskar-prasad/Demo', branch: 'main'
            }
        }



        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
        }
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed. Please check the errors.'
        }
    }
}
