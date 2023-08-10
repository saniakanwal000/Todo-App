FROM python:3.11
RUN pip install Django==4.2.4
RUN pip install --upgrade pip

COPY . .

RUN python3 manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
