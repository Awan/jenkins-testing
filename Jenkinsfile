pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'ak'
        DOCKER_IMAGE_TAG = 'latest'
        radio_image = 'abdullahkhabir/radio'
        music_host = 'http://whmsonic.radio.gov.pk:8068'
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
                    def dockerImage = docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}")
                }
            }
        }

        stage('Run Docker image') {
            steps {
                script {
                    sh "docker run --name ak-container -p 80:8000 -e music_host=${music_host} -d ${radio_image}"
                }
            }
        }
    }
}

