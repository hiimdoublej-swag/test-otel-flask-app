FROM    python:3.11-alpine

WORKDIR /usr/src/app

COPY    requirements.txt requirements.txt

RUN     pip install -r requirements.txt

ENTRYPOINT  [ "opentelemetry-instrument" ]

CMD         ["flask", "run", "-p", "8080"]
