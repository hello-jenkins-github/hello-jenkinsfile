pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                ./build.sh
            }
        }
        stage('Test'){
            steps {
                ./test.sh
            }
        }
        stage('Deploy') {
            steps {
                ./deploy.sh
            }
        }
    }
}
