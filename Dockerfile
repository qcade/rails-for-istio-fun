FROM ruby:2.6.3

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN gem install bundler && bundle install

ADD . /app


CMD ["rails", "server"]
