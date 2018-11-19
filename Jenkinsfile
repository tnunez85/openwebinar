pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building docker'
                sh 'whoami'
                sh 'sudo docker build -t app:test .'
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
                sh 'sudo docker run --rm --name app -id -p 80:80 app:test'
                sh '/bin/nc -vz localhost 80'
            }
            post{
                always{
                    sh 'docker container stop app'
                }
            }
        }
        stage('Push Registry') {
            steps {
                echo 'DEPLOY'
                sh 'docker tag app:test tnunez85/app:stable'
                sh 'docker push tnunez85/app:stable'
            }

        }

    }
}

