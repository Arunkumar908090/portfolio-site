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
                    sh 'docker stop portfolio || true && docker rm portfolio || true'
                    
                    // Run new container mapping port 8081 -> 80
                    sh 'docker run -d --name portfolio -p 8081:80 portfolio-site'
                }
            }
        }
    }
}

