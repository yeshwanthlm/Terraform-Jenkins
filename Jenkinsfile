pipeline {
    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    agent any

    stages {
        stage('Checkout') {
            steps {
                dir('terraform') {
                    git 'https://github.com/yeshwanthlm/Terraform-Jenkins.git'
                }
            }
        }

        stage('Plan') {
            steps {
                dir('terraform') {
                    bat 'terraform init'
                    bat 'terraform plan -out=tfplan'
                    bat 'terraform show -no-color tfplan > tfplan.txt'
                }
            }
        }

        stage('Approval') {
            when {
                not {
                    equals expected: true, actual: params.autoApprove
                }
            }
            steps {
                script {
                    def plan = readFile 'terraform/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                          parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
                }
            }
        }

        stage('Apply') {
            steps {
                dir('terraform') {
                    bat 'terraform apply -input=false tfplan'
                }
            }
        }
    }
}
