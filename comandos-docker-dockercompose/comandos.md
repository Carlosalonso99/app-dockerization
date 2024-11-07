# Guía Completa de Comandos Docker

Este documento contiene una referencia completa de todos los comandos que puedes utilizar en Docker para trabajar con contenedores, redes, volúmenes, imágenes y más. Docker es una herramienta poderosa para crear y administrar contenedores, y esta guía te ayudará a conocer cómo utilizarla al máximo.

## Índice

1. [Comandos Básicos](#comandos-básicos)
2. [Comandos de Imágenes](#comandos-de-imágenes)
3. [Comandos de Contenedores](#comandos-de-contenedores)
4. [Comandos de Volúmenes](#comandos-de-volúmenes)
5. [Comandos de Redes](#comandos-de-redes)
6. [Comandos de Registros](#comandos-de-registros)
7. [Comandos de Sistema](#comandos-de-sistema)
8. [Comandos de Swarm](#comandos-de-swarm)
9. [Comandos de Configuración](#comandos-de-configuración)
10. [Comandos de Stack](#comandos-de-stack)
11. [Comandos de Docker Compose](#comandos-de-docker-compose)

---

## Comandos Básicos

- **docker version**: Muestra la versión de Docker instalada.
- **docker info**: Proporciona información detallada sobre la instalación de Docker.
- **docker help**: Muestra ayuda sobre los comandos de Docker.

## Comandos de Imágenes

- **docker images**: Lista todas las imágenes locales.
- **docker pull [imagen]**: Descarga una imagen del registro de Docker.
- **docker build -t [nombre:etiqueta] [ruta]**: Construye una imagen a partir de un Dockerfile.
- **docker rmi [imagen]**: Elimina una imagen de Docker.
- **docker tag [imagen] [nuevo_nombre]**: Etiqueta una imagen con un nuevo nombre.

## Comandos de Contenedores

- **docker ps**: Lista los contenedores en ejecución.
- **docker ps -a**: Lista todos los contenedores, incluyendo los detenidos.
- **docker run [imagen]**: Crea y ejecuta un nuevo contenedor a partir de una imagen.
  - Opciones útiles:
    - **-d**: Ejecuta el contenedor en segundo plano.
    - **-p [puerto_local]:[puerto_contenedor]**: Mapea puertos.
    - **--name [nombre]**: Asigna un nombre al contenedor.
    - **-v [volumen_host]:[volumen_contenedor]**: Monta un volumen.
- **docker stop [contenedor]**: Detiene un contenedor en ejecución.
- **docker start [contenedor]**: Inicia un contenedor detenido.
- **docker restart [contenedor]**: Reinicia un contenedor.
- **docker rm [contenedor]**: Elimina un contenedor.
- **docker exec -it [contenedor] [comando]**: Ejecuta un comando dentro de un contenedor en ejecución.
- **docker logs [contenedor]**: Muestra los registros de un contenedor.

## Comandos de Volúmenes

- **docker volume create [nombre]**: Crea un volumen.
- **docker volume ls**: Lista todos los volúmenes.
- **docker volume inspect [nombre]**: Proporciona detalles sobre un volumen.
- **docker volume rm [nombre]**: Elimina un volumen.

## Comandos de Redes

- **docker network create [nombre]**: Crea una nueva red.
- **docker network ls**: Lista todas las redes disponibles.
- **docker network inspect [nombre]**: Proporciona detalles sobre una red.
- **docker network connect [red] [contenedor]**: Conecta un contenedor a una red.
- **docker network disconnect [red] [contenedor]**: Desconecta un contenedor de una red.

## Comandos de Registros

- **docker login**: Inicia sesión en un registro de Docker (como Docker Hub).
- **docker logout**: Cierra sesión del registro de Docker.
- **docker push [imagen]**: Sube una imagen a un registro.

## Comandos de Sistema

- **docker system df**: Muestra el uso del disco por imágenes, contenedores y volúmenes.
- **docker system prune**: Elimina datos no utilizados, como contenedores, volúmenes y redes sin uso.
- **docker stats**: Muestra las estadísticas de uso de recursos de los contenedores en tiempo real.

## Comandos de Swarm

- **docker swarm init**: Inicializa un nodo como administrador de Swarm.
- **docker swarm join --token [token] [direccion]**: Une un nodo al Swarm.
- **docker node ls**: Lista todos los nodos del Swarm.
- **docker service create [opciones] [imagen]**: Crea un nuevo servicio en Swarm.
- **docker service ls**: Lista todos los servicios en Swarm.

## Comandos de Configuración

- **docker config create [nombre] [archivo]**: Crea una nueva configuración.
- **docker config ls**: Lista todas las configuraciones.
- **docker config rm [nombre]**: Elimina una configuración.

## Comandos de Stack

- **docker stack deploy -c [archivo.yml] [nombre_stack]**: Despliega una stack utilizando un archivo de definición.
- **docker stack ls**: Lista todas las stacks desplegadas.
- **docker stack rm [nombre_stack]**: Elimina una stack.
- **docker stack services [nombre_stack]**: Lista todos los servicios de una stack.

## Comandos de Docker Compose

- **docker-compose up**: Construye, (re)crea, inicia y adjunta a contenedores para un servicio definido en un archivo `docker-compose.yml`.
  - Opciones útiles:
    - **-d**: Ejecuta los contenedores en segundo plano.
- **docker-compose down**: Detiene y elimina los contenedores, redes, volúmenes e imágenes creadas por `docker-compose up`.
- **docker-compose build**: Construye o reconstruye los servicios definidos en el archivo `docker-compose.yml`.
- **docker-compose start**: Inicia los contenedores que fueron creados con `docker-compose up` pero se encuentran detenidos.
- **docker-compose stop**: Detiene los contenedores en ejecución sin eliminarlos.
- **docker-compose restart**: Reinicia los contenedores.
- **docker-compose ps**: Lista los contenedores creados por Docker Compose.
- **docker-compose logs**: Muestra los registros de los contenedores administrados por Docker Compose.
- **docker-compose exec [servicio] [comando]**: Ejecuta un comando en un contenedor en ejecución de un servicio especificado.
- **docker-compose config**: Valida y muestra la configuración del archivo `docker-compose.yml`.

---

## Referencias

Para más información sobre Docker, puedes visitar la [documentación oficial](https://docs.docker.com/).

## Contribuir

Si quieres contribuir a esta guía, por favor abre un *pull request* o crea un *issue* con tus sugerencias y mejoras.

