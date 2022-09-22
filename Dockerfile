# Dockerfile
#Start with a base python version
FROM python:3.9-slim

#Copy all files to app folder
COPY . /app
WORKDIR /app

#Install all requirements
RUN pip install -r requirements.txt

#Expose a specific port
EXPOSE 8080

#Run the following on on execution
CMD exec gunicorn  --bind :$PORT --workers 1 --thread 8 --timeout 0 main:app
