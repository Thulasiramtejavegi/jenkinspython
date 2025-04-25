FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY templates/ ./templates/


ENV DB_HOST=postgres
ENV DB_NAME=userdb
ENV DB_USER=posrgres
ENV DB_PASSWORD=posrgres

EXPOSE 5001

CMD ["python", "app.py"]