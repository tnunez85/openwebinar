import jenkins.model.*



pipeline {
    agent any

    stages {
        stage('Inicio') {

            steps {
                echo 'Hello World!!'
                echo 'Running ${env.BUILD_ID} on ${env.JENKINS_URL}'

                sh 'ls -lrt /'


            }
            post {
                always {
                    echo 'El step Inicio ha sido ejecutado'
                }
                failure {
                    echo 'El step Inicio ha fallado'
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
                    cleanWS(dir)
                }
                failure {
                    echo 'Esto sale siempre que falla el stage test'
                }
                success {
                    echo 'El stage test ha salido OK'
                }
            }
        }
    }
}
