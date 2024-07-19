pipeline {
    agent any 

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', 
                    url: 'https://github.com/manikanta5315/task_public_newproject2.git'
            }
        }
        stage('Build and Test') {
            steps {
                bat 'docker pull python:3.9-slim'  
                bat '''
                    docker volume create volumevolume1
                    docker run -d --name jenkinscontainer -v volumevolume1:/var/lib/jenkins jenkins/jenkins 
                        pip install -r requirements.txt  
                        python test_app.py
                '''
            }
        }
    }
}
