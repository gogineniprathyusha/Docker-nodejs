pipeline {
    agent any
    tools {
  terraform 'Terraform_pipeline'
}

    stages {
        stage('Git checkout') {
           steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/gogineniprathyusha/Jenkinspipeline_terraform.git'
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

Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
