pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t app .'
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

            stage('Deploy') {
                steps {
                    echo 'DEPLOY'
                }

            }
        }
    }
}

