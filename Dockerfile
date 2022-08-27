FROM python:3.7.3-stretch

COPY . app.py /app/

WORKDIR /app/

RUN pip install --upgrade --no-cache-dir pip==22.2.2 &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

# command to run on container start
CMD [ "python", "app.py" ]