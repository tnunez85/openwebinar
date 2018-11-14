pipeline {
    agent any
    stages {
        stage('Inicio') {
            steps {
                echo 'Hello World!!'
                echo 'Running ${env.BUILD_ID} on ${env.JENKINS_URL}'
                sh 'sudo apt-get update | exit 1'
                sh 'exit 99'
                echo 'GIT_COMMIT % GIT_COMMIT %'
                echo 'GIT_BRANCH % GIT_BRANCH %'
                echo 'GIT_LOCAL_BRANCH % GIT_LOCAL_BRANCH %'
                echo 'GIT_PREVIOUS_COMMIT % GIT_PREVIOUS_COMMIT %'
                echo 'GIT_PREVIOUS_SUCCESSFUL_COMMIT % GIT_PREVIOUS_SUCCESSFUL_COMMIT %'
                echo 'GIT_URL % GIT_URL %'
                echo 'GIT_URL_N - % GIT_URL_N %'
                echo 'GIT_AUTHOR_NAME % GIT_AUTHOR_NAME %'
                echo 'GIT_COMMITTER_EMAIL % GIT_COMMITTER_EMAIL %'
            }
            post {
                always {
                    echo 'El step ${step} ha sido ejecutado'
                }
                failure {
                    echo 'El step ${step} ha fallado con error ${status}'
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
