pipeline {
    agent any
    stages {
        stage('Inicio') {
            steps {
                echo 'Hello World!!'
                echo 'Running ${env.BUILD_ID} on ${env.JENKINS_URL}'

                sh 'apt-get update'


            }
            post {
                always {
                    echo 'El step Inicio ha sido ejecutado'
                }
                failure {
                    echo 'El step Inicio ha fallado con error %errorlevel%'
                }

            }
        }
        stage('Test') {
            steps {
                echo 'NUUUF'
            }
            post {
                always(dir) {
                    echo 'Cleaning del Workspace después del stage test'
                    cleanWS()
                }
                failure {
                    echo 'esto sale siempre que falla el stage test'
                }
                success {
                    echo 'El stage test ha salido OK'
                }
            }
        }
    }
}
