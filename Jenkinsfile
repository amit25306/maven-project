pipeline {
agent any 
stages{
	stage('install with Maven'){
		steps{
		withMaven(jdk: 'Default_JDK', maven: 'Default Maven') {
			sh 'mvn clean install'
		}
		}
	}
	stage('Deploy Artifacts'){
        	steps{
		sshagent(['tomcat-pipe']) {
        	sh 'scp -o StrictHostKeyChecking=no */target/*.war ec2-user@172.31.16.37:/usr/share/tomcat/webapps/'
        	}
		}
    	}
}
}
