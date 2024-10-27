from python:3.10-slim
workdir /app
copy . /app
cmd ["python", "run"]