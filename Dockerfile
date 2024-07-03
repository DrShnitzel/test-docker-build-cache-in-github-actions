# syntax=docker/dockerfile:1
ARG RUBY_VERSION=3.3.1
FROM ruby:$RUBY_VERSION

WORKDIR /app

# Install build dependances
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git-core default-libmysqlclient-dev libffi-dev \
    libmagickwand-dev && \
    rm -rf /var/lib/apt/lists/*

COPY . .
