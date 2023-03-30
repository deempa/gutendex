FROM python:3.9-alpine3.17

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN ./manage.py migrate

RUN ./manage.py updatecatalog

# RUN ./manage.py collectstatic

CMD [ "./manage.py", "runserver", "${BIND_HOST}:${BIND_PORT}" ]