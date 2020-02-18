pipeline {
    agent any
    environment{
      tag = getdockertag()
    }
    stage('Clone repository') {
        
      git 'https://github.com/nagarjuna-nani/Git-Demo.git'
        checkout scm 
        
    }    
    stage('Build image') {
       

        sh label: '', script: 'docker build . -t docker797/deployimage:${tag}'
    }
    stage('push image'){
        withCredentials([string(credentialsId: 'docker-new', variable: 'newone')])  {
            sh label: '', script: "docker login -u docker797 -p ${password}"
    }
        sh label: '', script: 'docker push docker797/deployimage:${tag}'
    }
        
}

def getdockertag(){
    def tag = sh script: 'git rev-parse HEAD', returnStdout = true
    return tag
}
