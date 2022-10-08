pipeline {
    agent { label "master" }
    stages {
        stage("Clean Work Space"){
                    	steps{
                    		cleanWs deleteDirs: true
                    	}
                    }
        stage('Checkout') {
            steps {
              checkout([$class: 'GitSCM', 
                branches: [[name: 'dev']],
                extensions: [
                    [$class: 'SparseCheckoutPaths', 
                    sparseCheckoutPaths:[[$class:'SparseCheckoutPath', path:'/app/harish/']]]
                    ],
                userRemoteConfigs: [[url: 'https://github.com/harishjadhav26/node_file_server.git']]])
              sh "cd app/harish && ls -ltr"
          }
        }
    }
}
