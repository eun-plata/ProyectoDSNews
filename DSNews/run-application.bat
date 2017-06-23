@echo off

echo "Construyendo el proyecto DSNews..."
mvn package

echo "Ejecutanto el proyecto DSNews en un contenedor Docker..."
docker run -e MYSQL_PASS=hola -d -p 9080:8080 --name dsnews plata47/dsnews:0.0.1-SNAPSHOT

exit