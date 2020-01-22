node('new node'){
    

    stage('Clone repository') {
        
        git 'https://github.com/nagendra464/docekr.git'
        checkout scm 
        
    }    
    stage('Build image') {
       

        sh label: '', script: 'docker build -t docker797/naglogin .'
    }
}
