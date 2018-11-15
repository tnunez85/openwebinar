pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building docker'
                sh 'docker build -t app .'
                echo 'test'
            }
            post {
                always {
                    echo 'El step Build ha sido ejecutado'
                }
                failure {
                    echo 'El step Build ha fallado'
                }

            }
        }
        stage('Test') {
            steps {
                echo 'TEST'
            }
        }
        stage('Deploy') {
            steps {
                echo 'DEPLOY'
            }

        }

    }
}

