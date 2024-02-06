pipeline {
    
    agent any 
    
    environment {
        registry = "public.ecr.aws/v8e9z7z8/desafio"
    }
    
    stages {
        
        stage ('Checkout') {
            
            steps {
                
                git url: 'https://github.com/adsons3c/desafio.git', branch: 'main'
                sh 'ls'
            }
        }

        stage ('Docker Build') {

            steps {
                script { 
                    dockerImage = docker.build registry
                }
            }
        }
       
        stage ('Docker Push') {

            steps {
                script { 
                    sh 'aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com'
                    sh 'docker push public.ecr.aws/v8e9z7z8/desafio:latest'
                }
            }
        }
    }
}
