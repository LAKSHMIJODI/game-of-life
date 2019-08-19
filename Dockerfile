FROM ubuntu
RUN "apt install openjdk-8-jdk"
RUN "apt install tomcat7" 
ADD "/home/jenkins/jenkins/jenkins/workspace/create/gameoflife-web/target/gameoflife.war" "/var/lib/tomcat7/webapps/gameoflife.war"
RUN "sudo service tomcat7 restart"
EXPOSE 80/tcp
CMD ["echo","catalina.sh"]
