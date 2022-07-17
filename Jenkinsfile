pipeline {
    agent any
    stages {
        stage("checkout") {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                script {
                    if (isUnix()) {
                        sh "docker-compose up -d"
                    } else {
                        bat "docker-compose up -d"
                    }
                }
            }
            post {
                cleanup {
                    script {
                        if (isUnix()) {
                            sh "docker compose down"
                        } else {
                            bat "docker compose down"
                        }
                    }
                }
            }
        }
    }
}
