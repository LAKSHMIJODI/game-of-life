FROM ubuntu
RUN "sudo apt-get update"
RUN "sudo apt install openjdk-8-jdk -y"
RUN "sudo apt install tomcat8 -y" 
ADD "/home/jenkins/jenkins/jenkins/workspace/create/gameoflife-web/target/gameoflife.war" "/var/lib/tomcat7/webapps/gameoflife.war"
RUN "sudo service tomcat7 restart"
EXPOSE 80/tcp
CMD ["echo","catalina.sh"]
