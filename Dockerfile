FROM ruby

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /noice
WORKDIR /noice

COPY Gemfile /noice/Gemfile
COPY Gemfile.lock /noice/Gemfile.lock
RUN bundle install
COPY . /noice