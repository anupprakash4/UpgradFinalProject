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
    stage('Push Docker image to ECR') {
        steps {
		script {
            sh 'docker push 553397529585.dkr.ecr.us-east-1.amazonaws.com/prashant_course_assignment:latest'
        }
	}
    }
    stage('Deploy Application') {
        steps {
		sh 'scp -o StrictHostKeyChecking=no -i /home/ubuntu/CourseAssignment.pem deploy.sh ubuntu@10.0.30.248:~/'
                sh 'scp -o StrictHostKeyChecking=no -i /home/ubuntu/CourseAssignment.pem deploy.sh ubuntu@10.0.30.248:~/ "chmod +x deploy.sh"'
                sh 'scp -o StrictHostKeyChecking=no -i /home/ubuntu/CourseAssignment.pem deploy.sh ubuntu@10.0.30.248:~/ ./deploy.ssh'
	}
    }
  }
}
