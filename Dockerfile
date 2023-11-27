FROM python:3.11.5

COPY requirements.txt .

RUN pip install --upgrade -r requirements.txt

COPY server server/

EXPOSE 8080

CMD ["python", "server/main.py"]