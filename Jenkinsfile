pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t test/h:one -f Containerfile .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run --rm test/h:one'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker images'
            }
        }
    }
}
