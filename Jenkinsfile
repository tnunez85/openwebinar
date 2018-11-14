pipeline {
    agent any
    stages {
        stage('Inicio') {
            steps {
                echo 'Hello World!!'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'sudo apt-get update | exit 1'
                sh 'exit 99'
            }
            post {
                always {
                    echo 'esto siempre se ejecuta después del stage inicio'

                }
                failure {
                    echo 'esto sale siempre que falla el stage inicio'
                }

            }
        }
        stage('Test') {
            steps {
                echo 'NUUUF'
            }
            post {
                always(dir) {
                    echo 'esto siempre se ejecuta después del stage test'
                    cleanWS
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
