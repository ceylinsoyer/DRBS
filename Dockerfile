FROM python:3.11

EXPOSE 8080
WORKDIR /app

COPY . ./

RUN pip install -r REQUİREMENTS.txt

ENTRYPOINT ["stremlit","run","app.py","--server.port=8080","--server.address=0.0.0.0"]
