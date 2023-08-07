FROM python:3
RUN pip install django

COPY . .

RUN  python manage.py migrate

EXPOSE 8008

CMD ["python", "manage.py", "runserver", "0.0.0.0:8008"]

