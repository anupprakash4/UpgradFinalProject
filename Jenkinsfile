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
            sh 'docker build . -t 553397529585.dkr.ecr.us-east-1.amazonaws.com/prashant_course_assignment:latest'
        }
    }     
  }
}
