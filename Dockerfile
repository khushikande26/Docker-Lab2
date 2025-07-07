FROM python:3.10-slim

LABEL student ="Khushi"
LABEL lab="Lab 2"

ARG ENV=development

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV ENVIRONMENT=$ENV

EXPOSE 8000

CMD echo "Running in $ENVIRONMENT mode" && python main.py
