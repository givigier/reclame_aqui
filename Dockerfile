FROM ruby:2.3.0-alpine

RUN apk add --update git make g++ bash

RUN mkdir -p /reclame_aqui

WORKDIR /reclame_aqui

COPY . .

RUN gem install bundler -v 1.16.3
RUN bundle install
