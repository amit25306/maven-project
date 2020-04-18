pipeline {

agent any

    stages

    {
stage ("scm checkout")
{
    steps {
git branch: 'ci-cd-with-docker' , url: 'https://github.com/amit25306/maven-project'
}
}

stage ("package")
{
    steps {
        withMaven(jdk: 'localjdk-8', maven: 'localmaven') {
    sh 'mvn package'
}
    }
}
stage ("docker image build")
{

steps {
sh 'docker build -t amit253/mytomcat:0.0.1 .'

}
}

stage ("docker image push")
{       
steps{

withCredentials([string(credentialsId: 'MyDocker', variable: 'MyDocker')]) 
 
  {
    sh "docker login -u amit253 -p ${MyDocker}"
    sh 'docker push amit253/mytomcat:0.0.1'
    sh 'docker rmi amit253/mytomcat:0.0.1'
}
}
}
}
}
