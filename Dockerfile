FROM python:3.10.8-slim-buster

RUN mkdir -p /app/
COPY . main.py /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN python -m textblob.download_corpora
CMD ["main.py"]
ENTRYPOINT [ "python" ]