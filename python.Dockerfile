#Imagen Base: SO o pila de SW...
FROM python:3.9 

#Label: info relevante sobre la imagen
LABEL maintainer="correo@gmail.com"

#Directorios(Dentro del contenedor) 
WORKDIR /app

#Copiar archivos(cipia local en dir de docker)
COPY . /app

#Instalas las dependencias necesarias
RUN pip install -r requirements.txt

#Variables de entorno
ENV ENVIROMENT=production

#Exponer puertos
EXPOSE 5000

#Comando de inicio 
CMD ["python", app.py]



