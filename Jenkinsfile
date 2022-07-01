pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/suchismitadas/Docker_jenkins.git']]])
                
            }
        }
        stage('build'){
            steps{
                git 'https://github.com/suchismitadas/Docker_jenkins.git'
                sh 'docker build -t myimage1 .'
            }
        }
        stage('Run container'){
            steps{
                sh 'docker run -p 8501:8501 myimage1'
            }
        }
    }
}
