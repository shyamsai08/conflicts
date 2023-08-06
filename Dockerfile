# Use the official Tomcat base image from Docker Hub
FROM tomcat:latest

# Remove the existing Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY your-application.war /usr/local/tomcat/webapps/ROOT.war

# (Optional) If your application requires any additional configuration files, you can copy them here:
# COPY path/to/your/config/file /path/in/container

# Expose the Tomcat port (default is 8080)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]

