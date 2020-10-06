pipeline {
  agent any

  stages {
   stage('terraform init'){
     steps{
      sh 'terraform workspace new dev'
      sh 'terraform init'
     }
   }
} 
}
