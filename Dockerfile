FROM python:3.8

WORKDIR /app
COPY requirements.txt /app/requirements.txt
COPY server.py /app/server.py

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["python3", "server.py"]

