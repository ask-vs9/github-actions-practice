FROM python:3.12-slim

WORKDIR /app

COPY test_script.py .

CMD ["python", "test_script.py"]
