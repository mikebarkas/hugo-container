pipeline {
    agent {
        docker { image 'node:16-alpine' }
    }

    stages {
        stage('Build') {
            steps {
                sh 'node --version'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker images'
            }
        }
    }
}
