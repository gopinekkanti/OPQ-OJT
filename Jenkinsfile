pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/gopinekkanti/OPQ-OJT.git'            
            }
        }
    stage('Build AMI with Packer') {
            steps {
                script {      
                    sh 'packer build aws-ubuntu.pkr.hcl'
                }
            }
    }
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                sh ('terraform apply --auto-approve') 
           }
        }
    }
}
    
