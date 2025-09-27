pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'git@github.com:Arunkumar908090/portfolio-site.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building Portfolio Site..."
                // if you have build commands, add here
                // e.g., npm install && npm run build
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying Portfolio Site..."
                // add deployment steps (Docker, Nginx, etc.)
            }
        }
    }
}

