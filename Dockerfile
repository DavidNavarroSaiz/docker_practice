FROM python:3.10

COPY requirements.txt /app/requirements.txt

WORKDIR /app

COPY app.py /app/app.py

RUN pip install -r requirements.txt

EXPOSE 8000/tcp


ENTRYPOINT [ "python", "app.py" ]