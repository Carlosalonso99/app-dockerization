# Usamos la imagen base de Node.js
FROM node:14

# Establecemos el directorio de trabajo
WORKDIR /usr/src/app

# Copiamos el package.json y el package-lock.json
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto de la aplicación
COPY . .

# Exponemos el puerto que usará la aplicación
EXPOSE 8080

# Definimos el comando de inicio
CMD ["node", "server.js"]