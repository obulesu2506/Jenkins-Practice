//Use-Case: Disable Parallel executions
pipeline {
    agent any
    options {
        timeout(time: 10, unit: 'SECONDS')
        disableConcurrentBuilds()
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo This is Build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo This is Test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo This is Deploy'
            }
        }
    }
    post {
        always{
            echo 'This section runs always'
            deleteDir()
        }
        success{
            echo 'This section runs when pipeline success'
            deleteDir()
        }
        failure{
            echo 'This section runs when pipeline failure'
            deleteDir()
        }
    }
}