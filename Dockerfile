FROM ruby:3.0.2-slim
RUN apt-get update -qq && apt-get install -y build-essential postgresql-client libpq-dev
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install
