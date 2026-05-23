FROM nikolaik/python-python3:latest

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN playwright install chromium
RUN playwright install-deps

COPY . .

CMD ["python", "app.py"]
