FROM python:3.7.3-stretch

COPY . application.py /app/

WORKDIR /app/

RUN pip install --upgrade --no-cache-dir pip==22.2.2 &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
    

#expost port
EXPOSE 80

# command to run on container start
CMD [ "python", "application.py" ]
