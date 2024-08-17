pipeline {
    agent 'docker-agent-python'
    stages {
        stage('Build') {
            steps {
                echo "Building"
                python3 test.py
            }
        } 
        stage('Test') {
            steps {
                echo "Testing"
                ls
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
