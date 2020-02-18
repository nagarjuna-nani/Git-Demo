pipeline {
    agent any
    environment{
      TAG = getdockertag()
    }

    stages{
        stage('Clone repository'){
            steps {
        git 'https://github.com/nagarjuna-nani/Git-Demo.git'
        checkout scm 
            }
    }    
        stage('Build image'){
            steps {
        sh label: '', script: 'docker build . -t docker797/deployimage:${TAG}'
  
            }
    }       
        stage('push image'){
            steps{
        withCredentials([string(credentialsId: 'docker-new', variable: 'newone')])  {
            sh label: '', script: "docker login -u docker797 -p ${password}"
    }
        sh label: '', script: 'docker push docker797/deployimage:${TAG}'
    }
        }
    }
}

def getdockertag(){
    def tag = sh script: 'git rev-parse HEAD', returnStdout = true
    return tag
}
