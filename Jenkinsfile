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
        
        stage ('INFRA as Code AWS') {

        environment {
            AWS_ACCESS_KEY_ID = credencials('AWS_ACCESS_KEY_ID')
            AWS_SECRET_ACCESS_KEY = credencials('AWS_SECRET_ACCESS_KEY')
            AWS_REGION = credencials('AWS_REGION')
        }
            
            steps {
                
                dir('terraform') {
                    sh 'terraform init'
                    sh 'terraform apply'
                }
            }
        }

        // stage ('Docker Build') {

        //     steps {
        //         script { 
        //             dockerImage = docker.build registry
        //         }
        //     }
        // }
       
        // stage ('Docker Push') {

        //     steps {
        //         script {
        //             sh 'aws ecr-public get-login-password --region us-east-1  | docker login --username AWS --password-stdin public.ecr.aws'
        //             sh 'docker push public.ecr.aws/v8e9z7z8/desafio:latest'
        //         }
        //     }
        // }
    }
}
