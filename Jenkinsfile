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
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
