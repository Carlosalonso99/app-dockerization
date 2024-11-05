# Usamos la imagen base de Python
FROM python:3.9

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