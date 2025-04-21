pipeline {
    agent {
        label 'Loyaltri-Node'
    }

    stages {
        stage('Clean Workspace') {
            steps {
               echo "deleteDir()" // Clean the workspace
            }
        }
        stage('Checkout Code') {
            steps {
		echo "checkout code"
                // git branch: 'staging-loyaltri', credentialsId: '1a925f29-a4bb-49e5-aac8-4588317ad816', url: 'https://haseeb-docme@bitbucket.org/docmephpdeveloper/loyaltri-ui.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                echo 'npm install --force' // Install dependencies
            }
        }
        stage('Build') {
            steps {
                echo "CI=false npm run build:prod" 
            }
        }
	stage('Upload Artidfacts'){
		steps {
		sh 'pwd; ls -l'
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
