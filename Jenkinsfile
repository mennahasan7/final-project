pipeline {
    agent any
        environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mennahasan7/final-project.git'
        }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh "terraform init"
                
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh "terraform apply -auto-approve"
                }
            }
        }

    }
    post {
        success {
            echo "Build succeeded!"
            build job: 'deployment'
        }
        failure {
            echo "Build failed!"
        }
    }
    
}
