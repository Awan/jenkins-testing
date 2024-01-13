pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'ak'
        DOCKER_IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Your Dockerfile should be in the root of your repository
                    def dockerImage = docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}")
                }
            }
        }

        //stage('Push Docker Image') {
            //steps {
              //  script {
             //       docker.withRegistry('https://registry.example.com', 'docker-hub-credentials-id') {
                        // Push the Docker image to a registry (replace 'docker-hub-credentials-id' with your credentials ID)
            //            dockerImage.push()
           //         }
          //      }
         //   }
        //}
    }
}

