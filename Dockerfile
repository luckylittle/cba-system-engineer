FROM python
MAINTAINER Lucian Maly <lmaly@odecee.com.au>
# 2016-11-21

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY requirements.txt /usr/src/app/
RUN pip install virtualenv
RUN virtualenv .
RUN pip install -r requirements.txt

# Bundle app source
COPY app/ /usr/src/app/app/
COPY bin/ /usr/src/app/bin/
COPY include/ /usr/src/app/include/
COPY lib/ /usr/src/app/lib/
COPY testing/ /usr/src/app/testing/

# Listen on port 5000
EXPOSE 5000
# CMD python app/app.py