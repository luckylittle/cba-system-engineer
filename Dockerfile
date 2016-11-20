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
COPY app/ /usr/src/app
COPY bin/ /usr/src/app
COPY include/ /usr/src/app
COPY lib/ /usr/src/app
COPY testing/ /usr/src/app

# Listen on port 5000 & run in the background
EXPOSE 5000
CMD [ "python /usr/src/app/app.py" ]