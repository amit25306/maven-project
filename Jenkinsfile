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
}
}	
