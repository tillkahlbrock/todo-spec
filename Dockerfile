FROM ruby:2.1.10

RUN mkdir /app

ADD . /app/

WORKDIR /app

RUN bundle install
