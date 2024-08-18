pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = 'your-docker-registry-url'  // e.g., 'docker.io' for Docker Hub
        DOCKER_IMAGE = 'marmarin13/test'
        DOCKER_CREDENTIALS_ID = 'docker-credentials-id' // Jenkins credential ID for Docker registry
    }
    stages {
        stage('Build') {
            parallel  {
                stage('Build a') {
                    environment {
                        DOCKER_REGISTRY = 'eeeeeeeeeee'
                    }
                    steps {
                        sh '''
                        export short_sha=$(echo ${GIT_COMMIT} | cut -c1-7)
                        '''
                        echo "a ${DOCKER_REGISTRY} ${short_sha}"    
                    }
                }
                stage('Build b') {
                    steps {
                        echo "a ${DOCKER_REGISTRY}"   
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
