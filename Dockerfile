FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV FLASK_APP app.py  # Adjust if your main app file is different
ENV FLASK_ENV production
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
