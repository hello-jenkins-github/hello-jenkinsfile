pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo GOOS=darwin GOARCH=amd64 go build -o hello-jenkinsfile.darwin.amd64
                echo GOOS=linux GOARCH=amd64 go build -o hello-jenkinsfile.linux.amd64
            }
        }
        stage('Test'){
            steps {
                echo go test -v ./...
            }
        }
        stage('Deploy') {
            steps {
                echo -n "uploading darwin artifact => "
                echo curl -s chunk.io -T hello-jenkinsfile.darwin.amd64
                echo -n "uploading linux artifact => "
                echo curl -s chunk.io -T hello-jenkinsfile.linux.amd64
            }
        }
    }
}
