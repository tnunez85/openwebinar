pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building docker'
                sh 'whoami'
                sh 'sudo docker build -t app .'
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
                sh '/bin/nc -vz localhost 22'
                sh '/bin/nc -vz localhost 86'
            }
        }
        stage('Deploy') {
            steps {
                echo 'DEPLOY'
                sh 'docker tag app:test app:stable'
                sh 'docker push app:test app:stable'
            }

        }

    }
}

