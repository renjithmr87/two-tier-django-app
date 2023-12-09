FROM python:3.12.0-slim
WORKDIR /app
RUN apt update && \
    apt upgrade -y
RUN pip install --no-cache-dir --upgrade pip
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

ENV DB_NAME=myproject
ENV DB_USER=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=postgres-service  
ENV DB_PORT=5432

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
