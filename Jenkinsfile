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
    }
}
