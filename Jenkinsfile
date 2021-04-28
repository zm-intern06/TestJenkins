pipeline{
    agent any
    tools {
        terraform 'terraform'

    }
    stages{
        stage('terraform init'){
            steps{
                sh 'terraform init '
            }
       
        }
         stage('terraform plan'){
            steps{
                sh 'terraform plan '
            }
        stage('terraform apply'){
            steps{
                sh 'terraform apply --auto-approve '
            }
        }
    }
  
}

}
