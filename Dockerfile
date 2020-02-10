FROM tomcat:8.5.37-jre8
MAINTAINER arjun
RUN apt-get update
ADD http://mirrors.jenkins.io/war/latest/jenkins.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
