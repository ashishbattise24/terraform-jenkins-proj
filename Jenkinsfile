pipeline {
  agent any

  environment {
   PATH = "${PATH}:${getTerraformPath()}"
}

  stages {
   /* stage("create bucket"){
      steps{
        script{
             terraformPath('mytesst123')       
         }
       }
    }*/ 
  
    stage('terraform init and apply -dev'){
     steps{
      sh returnStatus: true, script: 'terraform workspace new dev'
      sh "terraform init"
      sh "terraform apply -auto-approve"
     }
   }

    stage('terraform init and apply prod'){
     steps{
      sh returnStatus: true, script: 'terraform workspace new prod'
      sh "terraform init"
      sh "terraform apply -auto-approve"
     }
   }

} 

/*
def createS3Bucket(bcuketName) {
  
  sh returnStatus: true, script: "aws s3 mb ${bucketName} --region=ap-southeast-1"
}
*/
def getTerraformPath(){
 def tfHome = tool name: 'terraform-12', type: 'terraform'
 return tfHome
}

