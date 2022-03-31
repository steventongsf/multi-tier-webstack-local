pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/steventongsf/multitier-webstack'
            }
        }
        stage('build') {
            steps {
                sh "mvn install -e"
            }
        }
        stage('test') {
            steps {
                sh "mvn test -e"
            }
        }
    }
}