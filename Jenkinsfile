pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/samuelrossato/automation-api-ruby.git'
            }
        }

        stage('Setup') {
            steps {
                bat '''
                    echo Installing Chocolatey and Ruby...
                    choco install ruby --version 3.1 -y
                    echo Ruby installed:
                    ruby -v
                    echo Bundler installation...
                    gem install bundler
                    echo Bundler installed:
                    bundler -v
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