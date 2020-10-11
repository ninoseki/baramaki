FROM python:3.8.6-slim-buster

RUN apt-get update \
  && apt-get install -y gcc python3-dev  \
  && apt-get clean  \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install iocingestor circus

COPY config.yml /app/config.yml
COPY circus.ini /etc/circus.ini

ENV PORT=8000

EXPOSE $PORT

CMD ["circusd", "/etc/circus.ini"]