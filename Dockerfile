FROM ruby:2.1.10

RUN apt-get update && apt-get install -y golang

RUN mkdir /go
WORKDIR /go
ENV GOPATH=/go
RUN go get github.com/tillkahlbrock/todo-cli
RUN ln -sf /go/bin/todo-cli /usr/bin/todo-cli

RUN mkdir /app
ADD spec/ /app/
WORKDIR /app
RUN bundle install

CMD ["/bin/sh"]
