pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Gob-Mink/qa-devops-portfolio.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t qa-portfolio .'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'docker run --rm qa-portfolio'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: '**/screenshots/*', allowEmptyArchive: true
        }
    }
}