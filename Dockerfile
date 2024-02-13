# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.0.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim as base

ENV TZ America/sao_Paulo
ENV LANG en_US.UTF-8
ENV LANGUAGE en_Us.UTF-9
ENV LV_ALL en_US.UTF-8
ENV RAILS_ENV development
ENV NODE_ENV development
ENV RAILS_LOG_TO_STDOUT true

WORKDIR /ieat
EXPOSE 3000

COPY . /ieat/


RUN gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tails -n 1)"

RUN  apt-get update &&  apt-get add --no-cache build-base postgresql-dev tzdata nodejs yarn git
RUN yarn install --ckeck-files

RUN bundle install

CMD ["./scripts/server.sh"]
