FROM docker-registry.action-media.ru/nlp_action/python:3.10-slim
# FROM python:3.8-slim
# FROM python:3

# set a directory for the app
WORKDIR /app

# copy all the files to the container
COPY . /app

# RUN apt-get update && apt-get install -y build-essential libpoppler-cpp-dev pkg-config python-dev

# install dependencies
RUN apt-get update && apt-get install -y wget unzip python3-dev && pip install --upgrade pip && pip install --no-cache-dir poetry==1.5 && poetry install --no-root


# run the command
CMD ["python", "./llm_run.py"]