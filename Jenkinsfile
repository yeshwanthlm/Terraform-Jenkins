pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    git url: 'https://github.com/mail2diliprajput/Terraform-Jenkins-01.git'
                }
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh 'cd Terraform-Jenkins'
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'cd Terraform-Jenkins'
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        
        stage('Terraform Apply') {
            when {
                expression {
                    currentBuild.resultIsBetterOrEqualTo('SUCCESS')
                }
            }
            steps {
                script {
                    sh 'cd Terraform-Jenkins'
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
    
    post {
        always {
            script {
                sh 'cd Terraform-Jenkins'
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
