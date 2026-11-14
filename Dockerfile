FROM ruby:3.4.12

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    default-mysql-client \
    default-libmysqlclient-dev \
    pkg-config \
    git \
    libyaml-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem install rails -v 8.1.4.1

WORKDIR /app
