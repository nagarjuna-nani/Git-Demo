FROM tomcat:8.5.37-jre8
MAINTAINER arjun
RUN apt-get update
RUN apt-get install default-jdk -y
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
ADD http://mirrors.jenkins.io/war/latest/jenkins.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
