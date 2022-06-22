FROM centos:7
WORKDIR /opt/
RUN yum install java -y
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz
RUN tar -xzvf  apache*.tar.gz

CMD ["/usr/local/tomcat/bin/catlina.sh"]
Expose 8084