# Dockerfile
#Start with a base python version
FROM python:3.7-slim

#Copy all files to app folder
COPY . /app
WORKDIR /app

#Install all requirements
RUN pip install -r requirements.txt

#Run the following on on execution
CMD exec gunicorn  --bind :$PORT --worker 1 --thread 8 --timeout 0 main:app
