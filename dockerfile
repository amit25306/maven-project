FROM tomcat
MAINTAINER amit
COPY /webapp/target/webapp.war /usr/local/tomcat/webapp
