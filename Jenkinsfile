pipeline {
    agent any
    tools {
  terraform 'Terraform_pipeline'
}

    stages {
        stage('Git checkout') {
           steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/gogineniprathyusha/Docker-nodejs.git'
            }
        }
        
        stage('terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }    
}
