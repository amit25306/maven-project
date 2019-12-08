pipeline {
agent any 
stages{
	stage('SCM Checkout'){
		steps {
		git 'https://github.com/amit25306/maven-project'
		}
	}
	stage('Compile with Maven'){
		steps{
		withMaven(jdk: 'Default_JDK', maven: 'Default Maven') {
			sh 'mvn compile'
		}
		}
	}
	stage('Test with Maven'){
		steps{
		withMaven(jdk: 'Default_JDK', maven: 'Default Maven') {
			sh 'mvn test'
		}
		}
	}
	stage('Build with Maven'){
		steps{
		withMaven(jdk: 'Default_JDK', maven: 'Default Maven') {
			sh 'mvn clean package'
		}
		}
	}
	stage('Verify with Maven'){
		steps{
		withMaven(jdk: 'Default_JDK', maven: 'Default Maven') {
			sh 'mvn verify'
		}
		}
	}
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
