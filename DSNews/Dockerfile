FROM mdelapenya/tomcat-mysql
MAINTAINER Manuel de la Peña <manuel.delapenya@liferay.com>

COPY target/DSNews.war $TOMCAT_HOME/webapps/
COPY SQL/ /

# Initialise MySQL: this will be executed on server startup
RUN echo "mysql -uroot -e 'CREATE USER \"deSoftNews\"@\"localhost\" IDENTIFIED BY \"deSoftNews\";'" > /mysql-setup.sh && \
    echo "mysql -uroot -e 'GRANT ALL PRIVILEGES on dsnews_content.* TO \"deSoftNews\"@\"localhost\";'" >> /mysql-setup.sh