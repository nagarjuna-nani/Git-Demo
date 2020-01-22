node{
    

    stage('Clone repository') {
        
      git 'https://github.com/nagarjuna-nani/Git-Demo.git'
        checkout scm 
        
    }    
    stage('Build image') {
       

        sh label: '', script: 'docker build -t docker797/naglogin .'
    }
}
