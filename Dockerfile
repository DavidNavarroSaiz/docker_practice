FROM python:3.10

RUN pip install -r requirements.txt

WORKDIR /app

COPY app.py /app/app.py

EXPOSE 8000/tcp


ENTRYPOINT [ "python", "app.py" ]