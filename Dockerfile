# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de dependencias
COPY app/requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia los archivos de la aplicación
COPY app/* .

# Expone el puerto 8080
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
