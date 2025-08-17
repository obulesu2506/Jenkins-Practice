//Use-Case: Parameters can be used to pass during pipeline runtime using params() function for calling those parameter values
pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 20, unit: 'MINUTES')
        disableConcurrentBuilds()
        retry(16)
    }
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr. Jenkins', description: ' Who should say Hello' )
        text(name: 'BIOGRAPHY', defaultValue: ' ', description: 'Enter some Info ')
        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
        choice(name: 'ACTION', defaultValue: ['one', 'two','three'], description: 'Pick Something')
        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Eneter as password')
    }
    stages{
        stage('Build section') {
            steps {
                sh 'echo this is Build section'
            }
        }
        stage('Test Section') {
            steps {
                sh 'echo This is Test section'
            }
        }
        stage('Deploy'){
            steps {
                sh 'echo This is Deploy section'
            }
        }
        stage('Parameters section') {
            steps {
                echo "Hello: ${params.PERSON}"
                echo "Biography: ${params.BIOGRAPHY}"
                echo "Toggle: ${params.TOGGLE}"
                echo "Choice: ${ACTION}"
                echo "Password: ${params.PASSWORD}"
            }
        }
    }
}