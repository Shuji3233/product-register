FROM ruby:latest
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install