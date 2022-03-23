FROM tomcat
COPY ticket-monster.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
