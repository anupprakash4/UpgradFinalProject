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
	  
    stage('ECR Login') {
        steps {
		script {
            sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 553397529585.dkr.ecr.us-east-1.amazonaws.com'
        }
	}
    }
  }
}
