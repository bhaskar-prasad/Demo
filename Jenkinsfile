pipeline {
    agent any

    environment {
        // Define the email recipients
        EMAIL_RECIPIENTS = 'bhaskars.co@gmail.com'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/bhaskar-prasad/Demo', branch: 'main'
            }
        }

    }

    post {
        always {
            emailext(
                to: "${EMAIL_RECIPIENTS}",
                subject: "Jenkins Build #${env.BUILD_NUMBER} - ${currentBuild.currentResult}",
                body: """
                Build Number: ${env.BUILD_NUMBER}
                Project: ${env.JOB_NAME}
                Status: ${currentBuild.currentResult}
                URL: ${env.BUILD_URL}
                """,
                attachLog: true
            )
        }
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed. Please check the errors.'
        }
    }
}
