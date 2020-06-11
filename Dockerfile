FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
RUN apt-get update && \
    apt-get install -y gdal-bin && \
    mkdir -p /app/out && \
    pip install -r requirements.txt
ENTRYPOINT ["python", "altitude_pg2shp.py"]