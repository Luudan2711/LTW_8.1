# Use official Tomcat 10 with JDK 17
FROM tomcat:10.1-jdk17-openjdk

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to webapps as ROOT application
COPY ch08_ex1_email.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]