FROM tiangolo/uvicorn-gunicorn:python3.7-alpine3.8

RUN set -e; \
  apk update \
  && apk add --virtual .build-deps gcc python3-dev musl-dev libffi-dev \
  && apk add gcc \
  && apk add python3-dev \
  && apk add musl-dev \
  && apk add libffi-dev \
  && rm -rf .build-deps

COPY requirements.txt .

RUN pip3 install --upgrade cython
RUN pip3 install --upgrade -r requirements.txt

COPY app app/

RUN python3 app/server.py

EXPOSE 5000

CMD ["python3", "app/server.py", "serve"]
