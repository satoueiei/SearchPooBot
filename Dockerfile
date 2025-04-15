FROM python:3.10-slim


WORKDIR /app


COPY requirements.txt requirements.txt


RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt


COPY . .

EXPOSE 8080

CMD ["python", "poo.py"]