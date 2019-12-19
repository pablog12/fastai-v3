
FROM frolvlad/alpine-miniconda3

RUN apk update && apk add git python3-dev gcc \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements-conda.txt ./

RUN conda install --file requirements-conda.txt -c pytorch
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt --upgrade

COPY app app/

RUN python app/server.py

EXPOSE 5000

CMD ["python", "app/server.py", "serve"]
