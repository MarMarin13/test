pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = 'your-docker-registry-url'  // e.g., 'docker.io' for Docker Hub
        DOCKER_IMAGE = 'marmarin13/test'
        DOCKER_CREDENTIALS_ID = 'docker-credentials-id' // Jenkins credential ID for Docker registry
    }
    stages {
        stage('Build') {
            steps {
                parallel  {
                    a: {
                        echo "a ${DOCKER_REGISTRY}"    
                    },
                    b: {
                        echo "b"
                    }
                }
            }
            } 
        stage('Test') {
            steps {
                echo "Testing"
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying"
                sh '''
                    cat test.py
                    echo "Test"
                    ls
                '''
            }
        }
        }
    post {
        always {
            echo "Finished pipeline"
        }
        success {
            echo "The pipeline succeeded"
        }
        failure {
            echo "The pipeline failed"
        }
    }
    }
