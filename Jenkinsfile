pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Setup') {
            steps {
                bat '''
                    choco install ruby --version 3.1 -y
                    gem install bundler
                '''
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'bundle install'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'bundle exec rspec'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}