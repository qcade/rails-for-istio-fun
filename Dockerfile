FROM ruby:2.6.3

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt update && \
    apt-get install -y nodejs

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN gem install bundler && bundle install

ADD . /app


CMD ["rails", "server", "-b", "0.0.0.0"]
