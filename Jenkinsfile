pipeline {
    agent any 

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', 
                    url: 'https://github.com/<your-username>/<your-repository-name>.git'
            }
        }
        stage('Build and Test') {
            steps {
                bat 'docker pull python:3.9-slim'  
                bat '''
                    docker run --rm -v $PWD:/app python:3.9-slim \
                        pip install -r requirements.txt  
                        python test_app.py
                '''
            }
        }
    }
}