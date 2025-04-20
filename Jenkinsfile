pipeline {
    agent {
        label 'Loyaltri-Node'
    }

    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir() // Clean the workspace
            }
        }
        stage('Checkout Code') {
            steps {
                git branch: 'staging-loyaltri', credentialsId: '1a925f29-a4bb-49e5-aac8-4588317ad816', url: 'https://haseeb-docme@bitbucket.org/docmephpdeveloper/loyaltri-ui.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install --force' // Install dependencies
            }
        }
        stage('Build') {
            steps {
                echo "CI=false npm run build:prod" 
            }
        }
    }
    post {
        always {
            // Clean up workspace after build
            cleanWs()
        }
    }
}
