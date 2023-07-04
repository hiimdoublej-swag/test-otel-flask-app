FROM        python:3.11

WORKDIR     /usr/src/app

COPY        requirements.txt requirements.txt

RUN         pip install -r requirements.txt

ENTRYPOINT  [ "opentelemetry-instrument" ]

COPY        . .

CMD         ["uwsgi", "--http", "127.0.0.1:8080", "-w", "app:app", "--master", "--processes" ,"4", "--threads", "4"]
