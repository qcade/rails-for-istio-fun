FROM ruby:2.6.3

ADD . /app

WORKDIR /app

RUN gem install bundler && bundle install

