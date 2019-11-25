FROM python:3-alpine

EXPOSE 80

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
