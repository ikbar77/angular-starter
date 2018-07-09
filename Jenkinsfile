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
		sh 'npm install -g @angular/cli --unsafe-perm'
		sh 'npm install -g angular-http-server --unsafe-perm'
                sh 'npm install'
            }
        }
        stage('Deliver') {
            steps {
                // sh './jenkins/scripts/deliver.sh'
		sh 'ng build --prod'
		sh 'angular-http-server --path dist/angular-starter'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
