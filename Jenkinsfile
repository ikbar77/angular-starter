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
		sh 'npm -g config set user root'
		sh 'npm install -g @angular/cli'
		sh 'npm install -g angular-http-server'
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
