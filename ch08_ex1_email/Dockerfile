# Sử dụng Tomcat 10 với JDK 17 (tương thích với Jakarta EE)
FROM tomcat:10.1-jdk17-openjdk

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps của Tomcat
COPY ch08_ex1_email.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (port mặc định của Tomcat)
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]