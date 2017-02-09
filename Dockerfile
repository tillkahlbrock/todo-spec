FROM alpine

RUN mkdir /app
ADD spec/ /app/
VOLUME /app
