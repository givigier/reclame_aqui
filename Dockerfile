FROM ruby:2.5.1-alpine

RUN apk add --update git make g++ bash

RUN mkdir -p /reclame_aqui

WORKDIR /reclame_aqui

COPY . .

RUN bundle install
