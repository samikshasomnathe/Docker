FROM centos:7
RUN yum install java-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz ./apache-tomcat.tar.gz
RUN tar -xzvf  ./apache-tomcat.tar.gz -C /opt
EXPOSE 8084
CMD ["/opt/apache-tomcat-8.5.81/bin/catlina.sh","run"]