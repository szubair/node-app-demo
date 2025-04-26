pipeline {
    agent {
        label 'Loyaltri-Node'
	parameters {
   		gitParameter type: 'PT_BRANCH',
                 	name: 'A_BRANCH',
                 	branchFilter: 'origin/(.*)',
                 	defaultValue: 'master',
                 	description: 'Choose a branch to checkout',
                 	selectedValue: 'DEFAULT',
                 	sortMode: 'DESCENDING_SMART'
  }
    }
    stages {
        stage('Clean Workspace') {
            steps {
               deleteDir() // Clean the workspace
            }
        }
        stage('Checkout Code') {
            steps {
                //git branch: 'alpha-loyaltri', credentialsId: '1a925f29-a4bb-49e5-aac8-4588317ad816', url: 'https://haseeb-docme@bitbucket.org/docmephpdeveloper/loyaltri-ui.git'
		git branch: params.A_BRANCH, url: 'https://github.com/szubair/node-app-demo.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install' // Install dependencies
            }
        }
/*
        stage('Build') {
            steps {
                sh 'unset CI && npm run build:dev'
            }
        }
*/
	stage('Upload Artifacts'){
		steps {
		sh 'pwd; ls -l; ls -l ./build'
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
