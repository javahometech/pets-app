FROM tomcat:8.0.20-jre8
COPY target/pets-app*.war /usr/local/tomcat/webapps/pets-app.war
