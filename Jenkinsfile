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
                echo "User selected branch is: ${params.branchName.split('/'.last())}"
		//git branch: params.A_BRANCH, url: 'https://github.com/szubair/node-app-demo.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                echo "blank for now"
                //sh 'npm install' // Install dependencies
            }
        }
	stage('Upload Artifacts'){
		steps {
		//sh 'pwd; ls -l; ls -l ./build'
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
