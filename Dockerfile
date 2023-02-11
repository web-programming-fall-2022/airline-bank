FROM python:3.10

WORKDIR /app
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . /app

RUN chmod +x /app/entrypoint.sh
CMD ./entrypoint.sh
