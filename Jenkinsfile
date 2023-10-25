pipeline {
  agent any
  environment {
    GITHUB_TOKEN=credentials('gh-pat')
    IMAGE_NAME='mikebarkas/hugo-container'
    IMAGE_VERSION='ext-0.119'
  }
  stages {
    stage('Cleanup') {
      steps {
        sh 'docker system prune -a --volumes --force'
      }
    }
    stage('Build image') {
      steps {
        sh 'docker build -t $IMAGE_NAME:$IMAGE_VERSION -f Containerfile .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $GITHUB_TOKEN_PSW | docker login ghcr.io -u $GITHUB_TOKEN_USR --password-stdin'
      }
    }
    stage('Tag image') {
      steps {
        sh 'docker tag $IMAGE_NAME:$IMAGE_VERSION ghcr.io/$IMAGE_NAME:$IMAGE_VERSION'
      }
    }
    stage('push image') {
      steps {
        sh 'docker push ghcr.io/$IMAGE_NAME:$IMAGE_VERSION'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
