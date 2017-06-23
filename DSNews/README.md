# DSNews

## Construcción del proyecto

El sistema de build `Maven` construye el proyecto, y gracias al plugin de Spotify + Maven + Docker, se construye además una imagen Docker en base al Dockerfile (o fichero descriptor) que está en el directorio raíz del proyecto.

```shell
mvn package
```

## Ejecución del proyecto

El script `run-application.sh` construye el proyecto y además lanza el contenedor Docker con la misma.

Los parámetros que recibe el contenedor son:

    - -e: añade una variable de entorno al contenedor, en este caso es necesario para inicializar la base de datos
    - -d: lanza el contenedor en segundo plano.
    - -p: enlaza el puerto 9080 de fuera (9080:) con el puerto 8080 del contenedor (:8080)
    - --name: asigna un nombre al contenedor, para luego facilitar lanzar comandos contra él.
    - plata47: nombre del repositorio de Docker, siempre asociado a un usuario. Debería crearse un usuario en DockerHub con ese nombre.
    - dsnews: nombre de la imagen de Docker, siempre asociado a la aplicación.
    - 0.0.1-SNAPSHOT: versión de la imagen de Docker. Proviene de la versión en el POM.xml. Si se cambia allí, hay que cambiarlo aquí también.

```shell
docker run -e MYSQL_PASS=hola -d -p 9080:8080 --name dsnews plata47/dsnews:0.0.1-SNAPSHOT
```

Una vez construído, apuntar un navegador al puerto 9080 (o el definido en el comando `docker run`), a la URL `http://localhost:9080`