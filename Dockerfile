FROM tomcat
MAINTAINER xyz
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
COPY tomcat-users.xml /usr/local/tomcat/conf/
RUN ["rm", "-fr", "/usr/local/tomcat/webapps/java-sample-app-1.0.0.war"]
COPY store-webapp-capsule.jar /usr/local/tomcat/webapps/
COPY store-webapp.jar /usr/local/tomcat/webapps/


CMD ["catalina.sh", "run"]
