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
		echo "git checkout"
                //git branch: 'alpha-loyaltri', credentialsId: '1a925f29-a4bb-49e5-aac8-4588317ad816', url: 'https://haseeb-docme@bitbucket.org/docmephpdeveloper/loyaltri-ui.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                echo 'npm install --force' // Install dependencies
            }
        }
        stage('Build') {
            steps {
                echo 'unset CI && npm run build:dev'
            }
        }
	stage('Upload Artifacts'){
		steps {
		sh 'pwd; ls -l build'
                echo "${env.BUILD_NUMBER} ${env.ENV_NAME}"
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
