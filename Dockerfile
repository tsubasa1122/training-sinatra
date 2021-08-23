FROM ruby:3.0.2-slim
RUN apt-get update -qq && apt-get install -y build-essential postgresql-client
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle config --local set path 'vendor/bundle'
RUN bundle install
