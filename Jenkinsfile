pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'git@github.com:Arunkumar908090/portfolio-site.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t portfolio-site .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop old container if running
                    sh 'docker stop portfolio-site || true && docker rm portfolio-site || true'
                    
                    // Run new one
                    sh 'docker run -d --name portfolio-site -p 3030:80 portfolio-site'
                }
            }
        }

        stage('Test Container') {
            steps {
                script {
                    STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:3030)
                    if [ "$STATUS_CODE" -ne 200 ]; then
                        error "App test failed with status code $STATUS_CODE"
                    else
                        echo "App test passed with status code $STATUS_CODE"
                    fi
                }
            }
        }
    }
}

