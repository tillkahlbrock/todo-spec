FROM alpine

RUN mkdir /spec
ADD spec/ /spec/
VOLUME /spec
