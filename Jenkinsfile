pipeline {
    agent any

    environment {
        DOCKER_TOKEN=credentials('docker-hub-token')
    }
    stages {
        stage('Login') {
            steps {
                sh 'echo $DOCKER_TOKEN_PSW |docker login -u $DOCKER_TOKEN_USR --password-stdin'
            }
        }
        stage('echo') {
            steps {
                echo 'Testing..'
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
