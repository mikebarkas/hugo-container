pipeline {
    agent any

    environment {
        DOCKER_TOKEN=credentials('docker-hub-token')
        IMAGE='mikebarkas/hugo'
        TAG='latest'
    }
    stages {
        stage('Build image') {
            steps {
                sh 'docker build -t $IMAGE:$TAG -f Containerfile .'
            }
        }
        stage('Login') {
            steps {
                sh 'echo $DOCKER_TOKEN_PSW |docker login -u $DOCKER_TOKEN_USR --password-stdin'
            }
        }
        stage('Push to registry') {
            steps {
                echo 'docker push $IMAGE:$TAG'
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
