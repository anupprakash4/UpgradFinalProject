pipeline {
  agent any
    
  stages {
        
    stage('Checkout code') {
        steps {
            checkout scm
        }
	}
     
    stage('Docker Build') {
        steps {
            sh 'docker build -t course-assignment:latest'
        }
    }     
  }
}
