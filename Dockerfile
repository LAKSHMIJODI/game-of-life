FROM ubuntu
LABEL version="7.0"
RUN "openjdk-8-jdk"
RUN "tomcat7" 
ADD "/home/jenkins/jenkins/jenkins/workspace/create/gameoflife-web/target/gameoflife.war" "/var/lib/tomcat7/webapps/gameoflife.war"
RUN "sudo service tomcat7 restart"
EXPOSE 80/tcp
CMD ["echo","catalina.sh"]
