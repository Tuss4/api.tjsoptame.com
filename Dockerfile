FROM ubuntu:trusty
MAINTAINER tuss4 <tuss4dbfn@gmail.com>

RUN mkdir /code 

WORKDIR /code

ADD requirements.txt /code/

RUN apt-get update -qq && \
    apt-get install -y -qq socat wget git python-psycopg2 \
    python2.7-dev gunicorn python-dev libpq-dev

RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py

RUN python get-pip.py

RUN pip install -U fig

RUN pip install -r requirements.txt

ADD . /code/

WORKDIR /code/tjsoptame

EXPOSE 8080
