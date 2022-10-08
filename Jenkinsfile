pipeline {
    agent none
    
    stages('master') {
    	stage('sample_auto_Checkout') {
    	        agent { 
                    label "master"
                }
        	    steps{
        	        script {
                        properties([pipelineTriggers([pollSCM('')])])
                    }
         	        //checkout([$class: 'GitSCM', branches: [[name: '*/${BRANCHNAME}']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'githubacc', url: 'https://github.com/harishjadhav26/node_file_server.git']]]) 
         	        git branch: '${BRANCHNAME}', url: 'https://github.com/harishjadhav26/node_file_server.git'
        	    }
    	}
    	stage('sample_auto_Build') {
    	    agent { 
                label "master"
            }
    	    steps{
     			// Shell build step
                sh """ 
                echo "Hello New code Update"
                ls -ltrh 
                 """    
    	    }
    	}
    }
}
