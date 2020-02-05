FROM python:3

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x migrate.sh

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]