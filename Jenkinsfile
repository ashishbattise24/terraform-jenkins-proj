pipeline {
  agent any

  environment {
  PATH = "${PATH}:${terraformPath()}"
}
  

  stages{
    stage('S3 - create bucket'){
      steps{
        script{
             createS3bucket('myt123ash')
         }
       } 
    } 
   stage('terraform init and apply -dev'){
     steps{
      sh returnStatus: true, script: 'terraform workspace new dev'
      sh "terraform init"
      sh "ansible-playbook terraform-bucket.yml"
     }  
   }  
   stage('echo statement'){
     steps{
       script{
         sh script: 'echo "This is Dev workspace"'
         }
     }
   }

   stage('terraform init and apply prod'){
     steps{
      sh returnStatus: true, script: 'terraform workspace new prod'
      sh "terraform init"

      sh "ansible-playbook terraform-bucket.yml -e app-env=prod"

     }
   }

}
}


def terraformPath(){
 def tfHome = tool name: 'terraform-12', type: 'terraform'
 return tfHome
}

def createS3bucket(bucketName){
  sh returnStatus: true, script: "aws s3 mb s3://${bucketName} --region=ap-southeast-1"
} 

