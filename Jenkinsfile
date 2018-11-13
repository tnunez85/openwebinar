pipeline {
    agent any
    stages {
        stage('Inicio') {
            steps {
                echo 'Hello World!!'
                echo 'Test from IntelliJ'
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
        }
    }
}