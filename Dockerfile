FROM ruby:2.1.10

RUN apt-get update && apt-get install -y golang

RUN mkdir -p /app/go
ADD . /app/
WORKDIR /app/go

ENV GOPATH=/app/go
RUN go get github.com/tillkahlbrock/todo-cli
RUN ln -sf /app/go/bin/todo-cli /usr/bin/todo-cli

WORKDIR /app
RUN bundle install
