# Dockerizar una Aplicación: Guía Completa

Este README te guiará paso a paso para dockerizar una aplicación sencilla. Aprenderemos a crear un Dockerfile, construir una imagen Docker y ejecutar un contenedor. ¡Vamos a empezar!

## 1. Crear un Dockerfile

El Dockerfile es un archivo que contiene una serie de instrucciones para que Docker pueda crear una imagen que ejecutará tu aplicación. A continuación, te muestro un ejemplo básico de Dockerfile para una aplicación Python.

### Ejemplo de Dockerfile

```dockerfile
# Usamos la imagen base de Python 3.9
FROM python:3.9

# Información del mantenedor
LABEL maintainer="tu_nombre@correo.com"

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el contenido de la aplicación al contenedor
COPY . /app

# Instalamos las dependencias
RUN pip install -r requirements.txt

# Exponemos el puerto que usará la aplicación
EXPOSE 5000

# Definimos el comando de inicio
CMD ["python", "app.py"]
```

### Descripción de las Partes del Dockerfile
- **FROM**: Especifica la imagen base. En este caso, usamos `python:3.9`.
- **LABEL**: Metadatos del contenedor, como el nombre del mantenedor.
- **WORKDIR**: Define el directorio de trabajo dentro del contenedor (`/app`).
- **COPY**: Copia los archivos locales al contenedor.
- **RUN**: Ejecuta comandos necesarios para preparar la imagen, como instalar dependencias.
- **EXPOSE**: Expone el puerto 5000 para la aplicación.
- **CMD**: Define el comando para ejecutar la aplicación cuando el contenedor se inicia.

## 2. Construir la Imagen Docker

Una vez que tengas tu Dockerfile listo, es hora de construir la imagen. Para hacerlo, abre tu terminal y navega al directorio que contiene el Dockerfile. Ejecuta el siguiente comando:

```bash
docker build -t nombre_imagen .
docker build -f flask.Dockerfile -t flask_image .
docker build -f java.Dockerfile -t java_image .
docker build -f nginx.Dockerfile -t nginx_image .
docker build -f node.Dockerfile -t node_image .
docker build -f python.Dockerfile -t python_image .

```

- `-t nombre_imagen`: Asigna un nombre a la imagen.
- `.`: Indica la ubicación del Dockerfile, que es el directorio actual.

## 3. Ejecutar el Contenedor

Después de crear la imagen, puedes ejecutar un contenedor basado en ella. Usa el siguiente comando:

```bash
docker run -d -p 5000:5000 --name nombre_contenedor nombre_imagen
```

- `-d`: Ejecuta el contenedor en segundo plano.
- `-p 5000:5000`: Asigna el puerto 5000 del host al puerto 5000 del contenedor.
- `--name nombre_contenedor`: Asigna un nombre al contenedor.
- `nombre_imagen`: Es el nombre de la imagen que creaste previamente.

## 4. Verificar el Contenedor en Ejecución

Para verificar que tu contenedor está en ejecución, puedes usar el comando:

```bash
docker ps
```

Este comando listará todos los contenedores en ejecución. Deberías ver tu contenedor junto con su nombre, ID y el puerto asignado.

## 5. Acceder a la Aplicación

Si tu aplicación está configurada para escuchar en el puerto 5000, ahora podrás acceder a ella desde tu navegador web en la siguiente dirección:

```
http://localhost:5000
```

## 6. Detener el Contenedor

Cuando hayas terminado, puedes detener el contenedor usando el siguiente comando:

```bash
docker stop nombre_contenedor
```

Para eliminar el contenedor, puedes ejecutar:

```bash
docker rm nombre_contenedor
```

## 7. Limpiar Imágenes Innecesarias

Si deseas limpiar las imágenes que ya no utilizas, puedes usar:

```bash
docker rmi nombre_imagen
```

## Resumen
1. **Crear un Dockerfile** para definir la configuración de tu imagen.
2. **Construir la imagen** usando `docker build`.
3. **Ejecutar el contenedor** usando `docker run`.
4. **Verificar y detener** el contenedor según sea necesario.

¡Y eso es todo! Ahora tienes una aplicación dockerizada y lista para ejecutarse. ¡Buena suerte en tu examen!

---

Si necesitas algún ejemplo más o detalles sobre otros comandos, déjame saberlo y puedo ampliar la guía según tus necesidades. ¡Ánimo con tu preparación!

