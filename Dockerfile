FROM ubuntu:20.04

ENV PYTHONUNBUFFERED=1
# Install python and pip
RUN apt-get update \
  && apt-get install -y curl unzip python3-pip

# change working dir to /usr/src/app
WORKDIR /usr/src/app

# install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt

COPY app/*.py /usr/src/app/app/
COPY app/static/ /usr/sr/app/app/static/
COPY app/templates/ /usr/src/app/app/templates/
COPY *.py /usr/src/app/

CMD /usr/bin/python3 /usr/src/app/run.py
