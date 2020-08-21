FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/pets-app*.war /usr/local/tomcat/webapps/pets-app.war
