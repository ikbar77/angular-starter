pipeline {
    agent {
        dockerfile {
            args '-p 80:80'
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
