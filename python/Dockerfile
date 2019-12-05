FROM python:3.6

WORKDIR /app

COPY . /app

WORKDIR /app/pip

RUN pip install --trusted-host pypi.python.org -r requirements.txt

WORKDIR /app/src

EXPOSE 4000

CMD ["python", "app.py"]