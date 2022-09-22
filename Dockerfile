# Dockerfile
#Start with a base python version
FROM python:3.9

#Copy all files to app folder
COPY . /app
WORKDIR /app

#Install all requirements
RUN pip3 install -r /requirements.txt

#Run the following on on execution
CMD ["gunicorn"  , "-b", "0.0.0.0:5000", "main:app"]
