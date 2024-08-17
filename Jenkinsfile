pipeline {
    agent {
        label 'docker-agent'
    }
    stages {
        stage('Build') {
            agent {
                dockerContainer {
                    image 'node:alpine'
                    reuseNode true
                }
            }
            steps {
                echo "Building"
                sh '''
                    node --version
                    python3 test.py
                '''
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
