node{
    

    stage('Clone repository') {
        
      git 'https://github.com/nagarjuna-nani/Git-Demo.git'
        checkout scm 
        
    }    
    stage('Build image') {
       

        sh label: '', script: 'docker build -t docker797/deployimage:1 .'
    }
    stage('push image'){
        withCredentials([string(credentialsId: 'docker-new', variable: 'newone')])  {
            sh label: '', script: "docker login -u docker797 -p ${password}"
    }
        sh label: '', script: 'docker push docker797/deployimage:1'
    }
        
}
