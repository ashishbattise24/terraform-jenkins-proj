pipeline {
  agent any

  stages {
   stage('terraform init and apply -dev'){
     steps{
      sh 'terraform workspace new dev'
      sh 'terraform init'
      sh 'terraform apply -var-file=dev.tfvars'
     }
   }
  stage('terraform init and apply prod'){
     steps{
      sh 'terraform workspace new dev'
      sh 'terraform init'
      sh 'terraform apply -var-file=prod.tfvars'
     }
   }

} 
}
