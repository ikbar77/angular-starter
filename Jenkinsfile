pipeline {
    agent {
        docker {
            image 'node:8.11-alpine' 
            args '-p 80:8080' 
        }
    }
    environment {
        HOME="." 
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
/*
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
*/
    }
}
