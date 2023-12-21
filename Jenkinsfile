pipeline { 
    agent any 
    environment{
        DOCKERHUB_CREDENCIALS = credentials ('dockerhub')
        RepoDockerHub = 'sergiodvz'
        NameContainer = 'crypto'
    }
    
    stages {
        stage('Build') { 
            steps { 
                dir ('Docker'){
                    sh "docker build -t ${env.RepoDockerHub}/${env.NameContainer}:${env.BUILD_NUMBER} ."
                }
            }
        }

        stage('Login to Dockerhub'){
            steps{
                sh "echo $DOCKERHUB_CREDENCIALS_PSW | docker login -u $DOCKERHUB_CREDENCIALS_USR --password-stdin "
            }
        }

        stage('Push image to Dockerhub'){
            steps{
                sh "docker push ${env.RepoDockerHub}/${env.NameContainer}:${env.BUILD_NUMBER} " 
            }
        }
    }
}