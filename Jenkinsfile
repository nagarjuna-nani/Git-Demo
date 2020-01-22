node{
    

    stage('Clone repository') {
        
      git 'https://github.com/nagarjuna-nani/Git-Demo.git'
        checkout scm 
        
    }    
    stage('Build image') {
       

        sh label: '', script: 'docker build -t docker797/naglogin .'
    }
    stage('push image'){
        withCredentials([string(credentialsId: 'docker-id', variable: 'passwd')]) {
    sh label: '', script: "docker login -u docker797 -p ${passwd}"
    }
        sh label: '', script: 'docker push docker797/naglogin'
    }
        
}
