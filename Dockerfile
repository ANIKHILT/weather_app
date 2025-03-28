FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

#COpy app files into container
COPY . .

EXPOSE 8080

CMD ["python", "app.py"]
