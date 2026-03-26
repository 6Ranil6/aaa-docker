FROM python:3.8

WORKDIR /main
COPY requirements.txt /main/requirements.txt
COPY server.py /main/server.py

RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python3", "server.py"]

