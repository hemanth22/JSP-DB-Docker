FROM tomcat:9.0.1-jre8-alpine
RUN apk update;apk add vim
ADD ./webapp /usr/local/tomcat/webapps/webapp

CMD ["catalina.sh", "run"]
